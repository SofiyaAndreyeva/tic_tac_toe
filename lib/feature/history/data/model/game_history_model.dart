import 'package:hive/hive.dart';
part 'game_history_model.g.dart';

@HiveType(typeId: 0)
class GameHistoryModel {
  @HiveField(0)
  final int xWins;
  @HiveField(1)
  final int oWins;
  @HiveField(2)
  final int draws;
  @HiveField(3)
  final DateTime date;

  GameHistoryModel({
    required this.xWins,
    required this.oWins,
    required this.draws,
    required this.date,
  });
}
