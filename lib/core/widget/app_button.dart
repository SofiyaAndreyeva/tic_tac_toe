import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';
import 'package:tic_tac_toe/core/theme/app_typography.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onPressed,
    required this.text,
    super.key,
    this.height = 46,
    this.width = 150,
    this.borderRadius = 16,
    this.color,
  });
  final Function()? onPressed;
  final String text;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: color ?? AppColor.darkPink,
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(AppSizes.size01),
              spreadRadius: AppSizes.size2,
              blurRadius: AppSizes.size5,
              offset: Offset(AppSizes.zero, AppSizes.size3),
            ),
          ],
        ),

        child: Center(
          child: Text(
            text,
            style: AppTypography.bodyLarge.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
