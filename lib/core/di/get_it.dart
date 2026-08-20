import 'package:get_it/get_it.dart';
import 'package:tic_tac_toe/feature/game/cubit/game_cubit.dart';
import 'package:tic_tac_toe/feature/history/cubit/game_history_cubit.dart';
import 'package:tic_tac_toe/feature/history/data/datasource/game_history_datasources.dart';
import 'package:tic_tac_toe/feature/history/data/repository/game_history_repo_impl.dart';
import 'package:tic_tac_toe/feature/history/domain/repository/game_history_repo.dart';
import 'package:tic_tac_toe/feature/history/domain/use_case/game_history_use_case.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // DATASOURCE
  getIt.registerLazySingleton<GameHistoryDatasource>(
    () => GameHistoryDatasource(),
  );

  // REPOSITORY
  getIt.registerLazySingleton<GameHistoryRepo>(
    () => GameHistoryRepoImpl(getIt()),
  );

  // USE CASE
  getIt.registerLazySingleton<GameHistoryUseCase>(
    () => GameHistoryUseCase(getIt()),
  );

  // CUBITS
  getIt.registerFactory<GameCubit>(() => GameCubit(getIt()));

  getIt.registerFactory<GameHistoryCubit>(() => GameHistoryCubit(getIt()));
}
