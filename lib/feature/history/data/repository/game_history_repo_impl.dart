import 'package:tic_tac_toe/feature/history/data/datasource/game_history_datasources.dart';
import 'package:tic_tac_toe/feature/history/domain/entity/game_history_entity.dart';
import 'package:tic_tac_toe/feature/history/domain/repository/game_history_repo.dart';

class GameHistoryRepoImpl implements GameHistoryRepo {
  final GameHistoryDatasource _datasource;
  GameHistoryRepoImpl(this._datasource);
  @override
  Future<void> saveGameHistory(String result) {
    return _datasource.saveGameHistory(result);
  }

  @override
  Future<List<GameHistoryEntity>> getGameHistory() {
    final models = _datasource.getGameHistory();
    return models.then(
      (value) => value
          .map(
            (e) => GameHistoryEntity(
              date: e.date,
              xWins: e.xWins,
              oWins: e.oWins,
              draws: e.draws,
            ),
          )
          .toList(),
    );
  }
}
