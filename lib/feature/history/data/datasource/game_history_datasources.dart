import 'package:hive/hive.dart';
import 'package:tic_tac_toe/feature/history/data/model/game_history_model.dart';

class GameHistoryDatasource {
   Future<void> saveGameHistory(String result) async {
    final box = await Hive.openBox<GameHistoryModel>('game_history');

    final now = DateTime.now();

    final key = box.keys.firstWhere(
      (key) {
        final item = box.get(key)!;

        return item.date.year == now.year &&
            item.date.month == now.month &&
            item.date.day == now.day;
      },
      orElse: () => null,
    );

    if (key != null) {
      final oldGame = box.get(key)!;

      await box.put(
        key,
        GameHistoryModel(
          xWins: oldGame.xWins + (result == 'X' ? 1 : 0),
          oWins: oldGame.oWins + (result == 'O' ? 1 : 0),
          draws: oldGame.draws + (result == 'Draw' ? 1 : 0),
          date: oldGame.date,
        ),
      );
    } else {
      await box.add(
        GameHistoryModel(
          xWins: result == 'X' ? 1 : 0,
          oWins: result == 'O' ? 1 : 0,
          draws: result == 'Draw' ? 1 : 0,
          date: now,
        ),
      );
    }
  }

  Future<List<GameHistoryModel>> getGameHistory() async {
    final box = await Hive.openBox<GameHistoryModel>('game_history');
    return box.values.toList();
  }
}
