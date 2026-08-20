import 'package:flutter/material.dart';

class Painter {
  static void drawCross({
    required Canvas canvas,
    required Paint paint,
    required double x,
    required double y,
    required double size,
  }) {
    canvas.drawLine(Offset(x, y), Offset(x + size, y + size), paint);

    canvas.drawLine(Offset(x + size, y), Offset(x, y + size), paint);
  }

  static void drawCircle({
    required Canvas canvas,
    required Paint paint,
    required double x,
    required double y,
    required double radius,
  }) {
    canvas.drawCircle(Offset(x, y), radius, paint);
  }
}
