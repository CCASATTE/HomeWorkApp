import 'package:flutter/material.dart';

Widget botonCrearLista() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
          onPressed: () {}, child: const Text("Crear Lista de Tareas")),
      ElevatedButton(onPressed: () {}, child: const Text('Ver Lista de Tareas'))
    ],
  );
}
