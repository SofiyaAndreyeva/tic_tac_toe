class GameHistoryEntity {
  final int xWins;
  final int oWins;
  final int draws;
  final DateTime date;

  GameHistoryEntity({
    required this.xWins,
    required this.oWins,
    required this.draws,
    required this.date,
  }) {
    if (xWins < 0 || oWins < 0 || draws < 0) {
      throw ArgumentError('Stats cannot be negative');
    }
  }
}