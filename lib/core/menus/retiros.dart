import 'package:dispensadora/main.dart';
import 'package:flutter/material.dart';



class Retiros extends StatefulWidget {
  @override
  _RetirosState createState() => _RetirosState();
}

class _RetirosState extends State<Retiros> {
  final TextEditingController _controller = TextEditingController();
  late App cj;

  @override
  void initState() {
    super.initState();
    cj = App();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Retiros',
          style: TextStyle(
            color: Colors.purple.shade900,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Por favor ingrese el monto que desea retirar',
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  int cantidad = int.tryParse(_controller.text) ?? 0;
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
                  } else {
                    cj.retirar(context, cantidad); // Pasar el contexto aquí
                  }
                },
                child: Text('Confirmar'),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20.0, // Tamaño de la letra del botón
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 100), // Espacio entre el botón y la imagen
              Image.network('https://cdn-icons-png.flaticon.com/256/9516/9516419.png'), // URL de la imagen
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}