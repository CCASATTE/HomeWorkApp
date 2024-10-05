import 'package:flutter/material.dart';

Widget fondo(context, Widget widgetLista) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/newfondo.png'), fit: BoxFit.cover)),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: CustomPaint(painter: MyPainter(), child: widgetLista),
  );
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 91, 114, 219)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;
}
