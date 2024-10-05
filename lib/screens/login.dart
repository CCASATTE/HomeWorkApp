import 'package:flutter/material.dart';
import 'package:myapp/canvas/background.dart';
import 'package:myapp/components/botones.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fondo(
          context,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botonCrearLista(context),
            ],
          )),
    );
  }
}
