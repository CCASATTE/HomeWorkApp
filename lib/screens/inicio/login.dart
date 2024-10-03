import 'package:flutter/material.dart';
import 'package:myapp/components/botones.dart';

Widget fondo() {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3632883547.
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/fondo.jpg"),
        fit: BoxFit.cover,
      ),
    ),
    child: botonCrearLista(),
  );
}
