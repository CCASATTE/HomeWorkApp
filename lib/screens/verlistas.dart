import 'package:flutter/material.dart';
import 'package:myapp/canvas/background.dart';
import 'package:myapp/data/Controllers/controller_tarea.dart';
import 'package:myapp/data/View/obtenerlista.dart';

class Verlistas extends StatefulWidget {
  const Verlistas({super.key});

  @override
  State<Verlistas> createState() => _VerlistasState();
}

final ControllerTarea _controllerTarea = ControllerTarea();

class _VerlistasState extends State<Verlistas> {
  @override
  void initState() {
    super.initState();
    _controllerTarea.inicializarTareas();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: fondo(
            context,
            Column(
              children: [_recientes(context)],
            )));
  }
}

Widget _recientes(context) {
  return Column(
    children: [ListRecientes(_controllerTarea.obtenerTares())],
  );
}
