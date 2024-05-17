  import 'package:dispensadora/modelos/IDispensador.dart';
  import 'package:flutter/material.dart';

  class CincoMil implements IDispensador {
    IDispensador? sucesor;

    @override
    void peticion(int monto) {}

    @override
    IDispensador? getSucesor() {
      return sucesor;
    }

    @override
    void setSucesor(IDispensador sucesor) {
      this.sucesor = sucesor;
    }

    void dispensar(BuildContext context, int cantidad) {
    int numBilletes = cantidad ~/ 5000;

    if (numBilletes > 0) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(
              "Entregando $numBilletes Billete de 5.000 pesos"),
        ),
      );
    }

    int cantidadRestante = cantidad % 50000;

    if (cantidadRestante > 0 && sucesor != null) {
      (sucesor as IDispensador).dispensar(context, cantidadRestante);
    }
  }
}