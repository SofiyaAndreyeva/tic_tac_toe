import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/core/di/get_it.dart';
import 'package:tic_tac_toe/feature/game/cubit/game_cubit.dart';
import 'package:tic_tac_toe/feature/history/cubit/game_history_cubit.dart';

class AppBloc {
  static final List<BlocProvider> appBlocs = [
    BlocProvider<GameCubit>(create: (_) => getIt<GameCubit>()),
    BlocProvider<GameHistoryCubit>(create: (_) => getIt<GameHistoryCubit>()),
  ];
}
