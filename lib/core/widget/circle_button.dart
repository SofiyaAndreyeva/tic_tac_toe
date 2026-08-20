import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.onPressed,
    this.height = 60,
    this.width = 100,
    required this.icon,
    this.color,
    this.iconColor,
  });

  final Function() onPressed;
  final double? height;
  final double? width;
  final IconData icon;
  final Color? color;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ??AppColor.darkGray,
          shape: BoxShape.circle,
          boxShadow: [
         BoxShadow(
              color: AppColor.black.withOpacity(AppSizes.size01),
              spreadRadius: AppSizes.size2,
              blurRadius: AppSizes.size5,
              offset: Offset(AppSizes.zero, AppSizes.size3),
            ),
          ],
        ),
        child: Icon(icon, color: iconColor ?? AppColor.white, size: AppSizes.size30),
      ),
    );
  }
}
