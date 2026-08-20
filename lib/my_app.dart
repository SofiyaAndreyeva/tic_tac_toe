import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/core/bloc/app_bloc.dart';
import 'package:tic_tac_toe/feature/home/page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBloc.appBlocs,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
