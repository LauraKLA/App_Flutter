import 'package:dispensadora/core/menus/home.dart';
import 'package:dispensadora/modelos/CienMil.dart';
import 'package:dispensadora/modelos/CincoMil.dart';
import 'package:dispensadora/modelos/CincuentaMil.dart';
import 'package:dispensadora/modelos/DiezMil.dart';
import 'package:dispensadora/modelos/IDispensador.dart';
import 'package:dispensadora/modelos/VeinteMil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPrincipal(),
    );
  }
}

class App {
  late IDispensador sucesor;

  App() {
    sucesor = CienMil();

    IDispensador cincuentaMil = CincuentaMil();
    IDispensador veinteMil = VeinteMil();
    IDispensador diezMil = DiezMil();
    IDispensador cincoMil = CincoMil();

    sucesor.setSucesor(cincuentaMil);
    cincuentaMil.setSucesor(veinteMil);
    veinteMil.setSucesor(diezMil);
    diezMil.setSucesor(cincoMil);
  }

  void retirar(BuildContext context, int cantidad) {
    if (cantidad % 5000 != 0) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('El valor ingresado no es válido.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    sucesor.dispensar(context, cantidad); // Pasar el contexto aquí
  }
}
