import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/widget/paint/painter.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';

class BackgroundCrossPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.white.withOpacity(AppSizes.size01)
      ..strokeWidth = AppSizes.size5
      ..strokeCap = StrokeCap.round;

    Painter.drawCross(canvas: canvas, paint: paint, x: 90, y: 88, size: 40);

    Painter.drawCross(canvas: canvas, paint: paint, x: 280, y: 180, size: 60);

    Painter.drawCross(canvas: canvas, paint: paint, x: 120, y: 550, size: 50);

    Painter.drawCross(canvas: canvas, paint: paint, x: 300, y: 700, size: 70);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
