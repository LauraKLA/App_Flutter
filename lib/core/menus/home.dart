import 'package:flutter/material.dart';
import 'package:dispensadora/core/menus/retiros.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Banco L.A.',
          style: TextStyle(
            color: Colors.purple.shade900,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0), // Ajustar el margen según necesites
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple.shade900, // Color del borde
                width: 2.0, // Ancho del borde
              ),
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0), // Ajustar el margen interno según necesites
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        '  ¡Bienvenido al Cajero Electronico! \n       Por favor eliga una opción. ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple.shade800,
                        ),
                      ),
                      SizedBox(height: 20), // Espacio entre el texto y la imagen
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/256/11771/11771942.png',
                        height:
                            250, // Ajustar la altura de la imagen según sea necesario
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Espacio entre la imagen y el botón
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Retiros()),
                      );
                    },
                    child: Text(
                      '   Retirar Dinero   ',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de la letra del botón
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre los botones
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Consignar Dinero',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de la letra del botón
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre los botones
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Gestionar Claves',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de la letra del botón
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}