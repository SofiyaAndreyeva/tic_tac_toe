import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/extensions/space_ext.dart';
import 'package:tic_tac_toe/feature/game/widget/game_board.dart';
import 'package:tic_tac_toe/feature/game/widget/game_score.dart';
import 'package:tic_tac_toe/feature/game/widget/page_bottom.dart';

class GameContent extends StatelessWidget {
  const GameContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppSizes.size16,
          right: AppSizes.size16,
          top: AppSizes.size50,
          bottom: AppSizes.size20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameScore(),
            AppSizes.size80.spaceH,
            GameBoard(),
            PageBottom(),
          ],
        ),
      ),
    );
  }
}
