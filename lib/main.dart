import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tic_tac_toe/core/di/get_it.dart';
import 'package:tic_tac_toe/feature/history/data/model/game_history_model.dart';
import 'package:tic_tac_toe/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(GameHistoryModelAdapter());

  await Hive.openBox<GameHistoryModel>('game_history');
  setupLocator();
  runApp(const MyApp());
}
