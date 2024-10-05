import 'package:flutter/material.dart';
import 'package:myapp/canvas/background.dart';
import 'package:myapp/components/botones.dart';
import 'package:myapp/components/textbox.dart';

class Crearlista extends StatelessWidget {
  const Crearlista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: fondo(
          context,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              casillaTexto('Titulo de la Tarea', 1),
              const SizedBox(
                height: 20,
              ),
              casillaTexto('Descripcion de la Tarea', 5),
              const SizedBox(
                height: 20,
              ),
              botton(() {}, 'Crear Tarea', Icons.add_moderator, Colors.green)
            ],
          ),
        ),
      ),
    );
  }
}
