import 'package:flutter/material.dart';
import 'package:myapp/data/Model/tarea.dart';
import 'package:myapp/data/View/compact_item.dart';

// ignore: must_be_immutable
class ListRecientes extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Tarea> tarea;

  ListRecientes(this.tarea, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tarea.length,
      itemBuilder: (context, index) => CompactItem(tarea[index]),
    );
  }
}
