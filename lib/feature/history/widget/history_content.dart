import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/feature/history/cubit/game_history_cubit.dart';
import 'package:tic_tac_toe/feature/history/cubit/game_history_state.dart';
import 'package:tic_tac_toe/feature/history/widget/history_card.dart';

class HistoryContent extends StatelessWidget {
  const HistoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameHistoryCubit, GameHistoryState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const CircularProgressIndicator();
        }
        return ListView.builder(
          itemCount: state.history.length,
          itemBuilder: (context, index) {
            final game = state.history[index];
            return HistoryCard(game: game);
          },
        );
      },
    );
  }
}
