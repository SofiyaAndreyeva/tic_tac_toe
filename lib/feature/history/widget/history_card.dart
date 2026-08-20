import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/constants/app_texts.dart';
import 'package:tic_tac_toe/core/extensions/date_time_extension.dart';
import 'package:tic_tac_toe/core/extensions/space_ext.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';
import 'package:tic_tac_toe/core/theme/app_typography.dart';
import 'package:tic_tac_toe/feature/history/domain/entity/game_history_entity.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required this.game});

  final GameHistoryEntity game;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppSizes.size16),
      padding: EdgeInsets.all(AppSizes.size16),
      decoration: BoxDecoration(
        color: AppColor.white.withOpacity(AppSizes.size03),
        borderRadius: BorderRadius.circular(AppSizes.size16),
        border: Border.all(color: AppColor.gray.withOpacity(AppSizes.size07)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              game.date.toFormattedString(),
              style: AppTypography.bodyLarge.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          AppSizes.size10.spaceH,
          Row(
            children: [
              Text(
                AppTexts.xWins(game.xWins),
                style: AppTypography.bodyMedium.copyWith(color: Colors.black),
              ),

              Spacer(),
              Text(
                AppTexts.oWins(game.oWins),
                style: AppTypography.bodyMedium.copyWith(color: Colors.black),
              ),
              Spacer(),
              Text(
                AppTexts.draws(game.draws),
                style: AppTypography.bodyMedium.copyWith(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
