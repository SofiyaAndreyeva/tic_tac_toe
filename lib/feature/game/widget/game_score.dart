import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/constants/app_texts.dart';
import 'package:tic_tac_toe/core/extensions/space_ext.dart';
import 'package:tic_tac_toe/core/widget/paint/circle_painter.dart';
import 'package:tic_tac_toe/core/widget/paint/cross_painter.dart';
import 'package:tic_tac_toe/core/widget/paint/line_painter.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';
import 'package:tic_tac_toe/core/theme/app_typography.dart';
import 'package:tic_tac_toe/feature/game/cubit/game_cubit.dart';
import 'package:tic_tac_toe/feature/game/cubit/game_state.dart';

class GameScore extends StatelessWidget {
  const GameScore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: AppSizes.size30,
                  height: AppSizes.size30,
                  child: CustomPaint(painter: CrossPainter()),
                ),
                SizedBox(
                  width: AppSizes.size35,
                  height: AppSizes.size35,
                  child: CustomPaint(painter: LinePainter()),
                ),
                SizedBox(
                  width: AppSizes.size30,
                  height: AppSizes.size30,
                  child: CustomPaint(painter: CirclePainter()),
                ),
              ],
            ),
            AppSizes.size5.spaceH,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  AppTexts.wins(state.xWins),

                  style: AppTypography.bodyLarge.copyWith(
                    fontWeight: FontWeight.w900,
                    color: AppColor.white,
                  ),
                ),
                Text(
                  AppTexts.mainDraws(state.draws),
                  style: AppTypography.bodyLarge.copyWith(
                    fontWeight: FontWeight.w900,
                    color: AppColor.white,
                  ),
                ),
                Text(
                  AppTexts.wins(state.oWins),

                  style: AppTypography.bodyLarge.copyWith(
                    fontWeight: FontWeight.w900,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
