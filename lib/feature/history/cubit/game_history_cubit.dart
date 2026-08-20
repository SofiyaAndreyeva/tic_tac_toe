import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/feature/history/cubit/game_history_state.dart';
import 'package:tic_tac_toe/feature/history/domain/use_case/game_history_use_case.dart';

class GameHistoryCubit extends Cubit<GameHistoryState> {
  final GameHistoryUseCase _gameHistoryUseCase;

  GameHistoryCubit(this._gameHistoryUseCase)
      : super(const GameHistoryState());

  Future<void> loadGameHistory() async {
    emit(state.copyWith(isLoading: true));

    try {
      final history = await _gameHistoryUseCase.getGameHistory();
      print('Loaded game history: ${history.length} games ${history.map((game) => game.date).toList()} ${history.map((game) => '${(game.date)} — X: ${game.xWins}, O: ${game.oWins}, Draws: ${game.draws}').toList()}');
      emit(
        state.copyWith(
          history: history,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: e.toString(),
        ),
      );
    }
  }
}