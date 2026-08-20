import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/widget/paint/painter.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';

class CrossPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.white
      ..strokeWidth = AppSizes.size5
      ..strokeCap = StrokeCap.round;

    Painter.drawCross(
      canvas: canvas,
      paint: paint,
      x: 0,
      y: 0,
      size: size.width,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
