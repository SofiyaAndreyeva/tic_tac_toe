
class GameState {
  final List<String?> board;
  final bool isXTurn;
  final int xWins;
  final int oWins;
  final int draws;
  final List<int> winningCells;

  const GameState({
    required this.board,
    required this.isXTurn,
    this.xWins = 0,
    this.oWins = 0,
    this.draws = 0,
    this.winningCells = const [],
  });

  factory GameState.initial() {
    return GameState(
      board: List.filled(9, null),
      isXTurn: true,
      xWins: 0,
      oWins: 0,
      draws: 0,
      winningCells: [],
    );
  }

  GameState copyWith({
    List<String?>? board,
    bool? isXTurn,
    int? xWins,
    int? oWins,
    int? draws,
    List<int>? winningCells,
  }) {
    return GameState(
      board: board ?? this.board,
      isXTurn: isXTurn ?? this.isXTurn,
      xWins: xWins ?? this.xWins,
      oWins: oWins ?? this.oWins,
      draws: draws ?? this.draws,
      winningCells: winningCells ?? this.winningCells,
    );
  }
}

