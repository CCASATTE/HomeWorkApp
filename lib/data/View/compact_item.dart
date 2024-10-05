import 'package:flutter/material.dart';
import 'package:myapp/data/Model/tarea.dart';

// ignore: must_be_immutable
class CompactItem extends StatelessWidget {
  Tarea tareas;
  CompactItem(this.tareas, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              _listaReportes(context),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_document,
                      color: Colors.yellow,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_forever_rounded,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54, offset: Offset(3.0, 3.0), blurRadius: 8.0)
        ]);
  }

  Widget _listaReportes(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tareas.titulo,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 3.0,
          ),
          Text(tareas.descripcion,
              style: Theme.of(context).textTheme.labelSmall),
          const SizedBox(
            height: 3.0,
          ),
          Text(
            tareas.fecha.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
