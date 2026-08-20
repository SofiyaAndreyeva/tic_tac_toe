import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/widget/paint/background_circle_painter.dart';
import 'package:tic_tac_toe/core/widget/paint/background_cross_painter.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';

class PageBackground extends StatelessWidget {
  const PageBackground({
    super.key,
    required this.widget,
    this.withPaint = true,
  });

  final Widget widget;
  final bool withPaint;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColor.lightYellow, AppColor.lightPink],
        ),
      ),
      child: withPaint
          ? Stack(
              children: [
                Positioned.fill(
                  child: CustomPaint(painter: BackgroundCrossPainter()),
                ),
                Positioned.fill(
                  child: CustomPaint(painter: BackgroundCirclePainter()),
                ),
                widget,
              ],
            )
          : widget,
    );
  }
}
