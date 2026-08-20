import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/constants/app_texts.dart';
import 'package:tic_tac_toe/core/extensions/space_ext.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';
import 'package:tic_tac_toe/core/theme/app_typography.dart';
import 'package:tic_tac_toe/core/widget/app_button.dart';
import 'package:tic_tac_toe/feature/game/page/game_page.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            AppTexts.ticTacToe,
            style: AppTypography.headlineLarge.copyWith(
              color: AppColor.white.withOpacity(AppSizes.size08),
            ),
          ),
        ),
        AppSizes.size10.spaceH,
        AppButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GamePage()),
            );
          },
          text: AppTexts.play,
        ),
        AppSizes.size10.spaceH,
      ],
    );
  }
}
