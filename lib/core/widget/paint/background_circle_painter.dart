import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/widget/paint/painter.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';

class BackgroundCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.white.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = AppSizes.size5;

    Painter.drawCircle(
      canvas: canvas,
      paint: paint,
      x: 300,
      y: 100,
      radius: 20,
    );

    Painter.drawCircle(
      canvas: canvas,
      paint: paint,
      x: 100,
      y: 270,
      radius: 30,
    );

    Painter.drawCircle(
      canvas: canvas,
      paint: paint,
      x: 100,
      y: 700,
      radius: 25,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
