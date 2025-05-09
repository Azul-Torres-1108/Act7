import 'package:flutter/material.dart';

//! CustomPaint con AppBar y botón de regreso

class Widget071 extends StatelessWidget {
  const Widget071({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),
      appBar: AppBar(
        title: const Text('CustomPaint'),
        backgroundColor: const Color(0xFF0061A2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: CustomPaint(
            painter: DemoPainter(),
            child: const Text(
              'This is Pac-Man',
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white54,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 250,
        height: 250,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
