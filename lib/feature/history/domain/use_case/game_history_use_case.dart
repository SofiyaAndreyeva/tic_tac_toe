import 'package:tic_tac_toe/feature/history/domain/entity/game_history_entity.dart';
import 'package:tic_tac_toe/feature/history/domain/repository/game_history_repo.dart';

class GameHistoryUseCase {
  final GameHistoryRepo _gameHistoryRepository;
  GameHistoryUseCase(this._gameHistoryRepository);

  Future<void> saveGameHistory(String result) async {
     await _gameHistoryRepository.saveGameHistory(result);
  }

  Future<List<GameHistoryEntity>> getGameHistory() async {
   final history = await _gameHistoryRepository.getGameHistory();
   history.sort((a, b) => a.date.compareTo(b.date)); 
   return history;
  }
}