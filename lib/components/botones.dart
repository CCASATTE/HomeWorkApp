import 'package:flutter/material.dart';
import 'package:myapp/screens/crearlista.dart';
import 'package:myapp/screens/verlistas.dart';

Widget botonCrearLista(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      botton(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Crearlista()));
      }, 'Crear Lista de Tareas', Icons.add_circle_outline,
          const Color.fromARGB(255, 121, 124, 146)),
      botton(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Verlistas()));
      }, 'Ver Lista de Tareas', Icons.list_alt, Colors.blueAccent)
    ],
  );
}

Widget botton(
    VoidCallback onPressed, String texto, IconData icono, Color color) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 0.0),
        child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            elevation: 8.0,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: Colors.transparent),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icono,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                texto,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
