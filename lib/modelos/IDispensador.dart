import 'package:flutter/material.dart';

abstract class IDispensador {
  void peticion(int monto);
  IDispensador? getSucesor();
  void setSucesor(IDispensador sucesor);
  void dispensar(BuildContext context, int cantidad);
}