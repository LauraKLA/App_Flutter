import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class MyAppDispensador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Cajero Banco L.A'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              context.go('/home');
            },
          ),
          ListTile(
            title: Text('Retiros'),
            onTap: () {
              Navigator.pop(context);
              context.go('/retiros');
            },
          ),
        ],
      ),
    );
  }
}
