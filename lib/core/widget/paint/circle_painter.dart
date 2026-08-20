import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/widget/paint/painter.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = AppSizes.size5;

    Painter.drawCircle(
      canvas: canvas,
      paint: paint,
      x: size.width / 2,
      y: size.height / 2,
      radius: size.width / 2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
