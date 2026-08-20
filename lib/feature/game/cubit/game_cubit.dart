import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/feature/history/domain/use_case/game_history_use_case.dart';
import 'package:tic_tac_toe/feature/game/cubit/winner.dart';
import 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  final GameHistoryUseCase _gameHistoryUseCase;
  GameCubit(this._gameHistoryUseCase) : super(GameState.initial());

  Future<void> makeMove(int index) async {
    if (state.board[index] != null) return;

    final newBoard = List<String?>.from(state.board);
    newBoard[index] = state.isXTurn ? "X" : "O";

    final winner = _checkWinner(newBoard);

    if (winner != null) {
      await _gameHistoryUseCase.saveGameHistory(winner.winner);

      emit(
        state.copyWith(
          board: newBoard,
          isXTurn: !state.isXTurn,
          xWins: winner.winner == "X" ? state.xWins + 1 : state.xWins,
          oWins: winner.winner == "O" ? state.oWins + 1 : state.oWins,
          winningCells: winner.winningCells,
        ),
      );
      _startNewGame();
      return;
    }

    if (!newBoard.contains(null)) {
      await _gameHistoryUseCase.saveGameHistory(
        "Draw"
      );
      emit(
        state.copyWith(
          board: newBoard,
          isXTurn: !state.isXTurn,
          draws: state.draws + 1,
          winningCells: [],
        ),
      );

      _startNewGame();
      return;
    }

    emit(state.copyWith(board: newBoard, isXTurn: !state.isXTurn));
  }

  Future<void> _startNewGame() async {
    await Future.delayed(const Duration(milliseconds: 1450));
    emit(
      state.copyWith(
        board: List.filled(9, null),
        isXTurn: true,
        winningCells: [],
      ),
    );
  }

  void resetGame() {
    emit(GameState.initial());
  }

  WinnerResult? _checkWinner(List<String?> board) {
    const winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],

      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],

      [0, 4, 8],
      [2, 4, 6],
    ];

    for (final combination in winningCombinations) {
      final a = combination[0];
      final b = combination[1];
      final c = combination[2];

      if (board[a] != null && board[a] == board[b] && board[b] == board[c]) {
        return WinnerResult(winner: board[a]!, winningCells: combination);
      }
    }

    return null;
  }
}
