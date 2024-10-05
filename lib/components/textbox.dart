import 'package:flutter/material.dart';

Widget casillaTexto(String hint, int maxline) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
    child: Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3))
      ], borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        maxLines: maxline,
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 126, 103, 103),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        style: const TextStyle(
          color: Color.fromARGB(255, 20, 0, 0),
        ),
      ),
    ),
  );
}
