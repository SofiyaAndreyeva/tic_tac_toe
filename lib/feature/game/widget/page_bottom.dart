import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/core/widget/circle_button.dart';
import 'package:tic_tac_toe/feature/game/cubit/game_cubit.dart';
import 'package:tic_tac_toe/feature/history/page/game_history_page.dart';

class PageBottom extends StatelessWidget {
  const PageBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleButton(
          onPressed: () {
            context.read<GameCubit>().resetGame();
          },
          icon: Icons.refresh,
        ),
        CircleButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icons.home,
        ),
        CircleButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameHistoryPage()),
            );
          },
          icon: Icons.history,
        ),
      ],
    );
  }
}
