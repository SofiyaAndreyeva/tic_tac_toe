import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/core/constants/app_costants.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/widget/paint/circle_painter.dart';
import 'package:tic_tac_toe/core/widget/paint/cross_painter.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';
import 'package:tic_tac_toe/feature/game/cubit/game_cubit.dart';
import 'package:tic_tac_toe/feature/game/cubit/game_state.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        return Expanded(
          child: GridView.builder(
            itemCount: AppCostants.int9,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: AppCostants.int3,
              crossAxisSpacing: AppSizes.size8,
              mainAxisSpacing: AppSizes.size8,
            ),
            itemBuilder: (context, index) {
              final isWinner = state.winningCells.contains(index);
              return InkWell(
                onTap: state.winningCells.isNotEmpty
                    ? () {}
                    : () {
                        context.read<GameCubit>().makeMove(index);
                      },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: AppCostants.milli300),
                  decoration: BoxDecoration(
                    color: isWinner
                        ? AppColor.pink.withOpacity(AppSizes.size03)
                        : AppColor.light.withOpacity(AppSizes.size01),
                    borderRadius: BorderRadius.circular(AppSizes.size20),
                    border: Border.all(
                      color: AppColor.white.withOpacity(AppSizes.size07),
                      width: AppSizes.size3,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: isWinner
                            ? AppColor.brightPink.withOpacity(AppSizes.size03)
                            : AppColor.darkGray.withOpacity(AppSizes.size01),
                        spreadRadius: AppSizes.size1,
                        blurRadius: AppSizes.size10,
                        offset: Offset(AppSizes.zero, AppSizes.size8),
                      ),
                    ],
                  ),
                  child: Center(child: _buildIcon(state.board[index])),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildIcon(String? value) {
    switch (value) {
      case "X":
        return SizedBox(
          width: AppSizes.size50,
          height: AppSizes.size50,
          child: CustomPaint(painter: CrossPainter()),
        );

      case "O":
        return SizedBox(
          width: AppSizes.size50,
          height: AppSizes.size50,
          child: CustomPaint(painter: CirclePainter()),
        );

      default:
        return const SizedBox.shrink();
    }
  }
}
