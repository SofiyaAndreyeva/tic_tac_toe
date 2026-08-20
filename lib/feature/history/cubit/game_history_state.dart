import 'package:tic_tac_toe/feature/history/domain/entity/game_history_entity.dart';

class GameHistoryState {
  final List<GameHistoryEntity> history;
  final bool isLoading;
  final String? error;

  const GameHistoryState({
    this.history = const [],
    this.isLoading = false,
    this.error,
  });

  GameHistoryState copyWith({
    List<GameHistoryEntity>? history,
    bool? isLoading,
    String? error,
  }) {
    return GameHistoryState(
      history: history ?? this.history,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}