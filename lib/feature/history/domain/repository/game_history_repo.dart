import 'package:tic_tac_toe/feature/history/domain/entity/game_history_entity.dart';

abstract class GameHistoryRepo {
  Future<void> saveGameHistory(String result);
  Future<List<GameHistoryEntity>> getGameHistory();
}