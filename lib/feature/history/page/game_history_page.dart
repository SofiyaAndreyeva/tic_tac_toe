import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/core/constants/app_sizes.dart';
import 'package:tic_tac_toe/core/constants/app_texts.dart';
import 'package:tic_tac_toe/core/theme/app_color.dart';
import 'package:tic_tac_toe/core/theme/app_typography.dart';
import 'package:tic_tac_toe/core/widget/page_background.dart';
import 'package:tic_tac_toe/feature/history/cubit/game_history_cubit.dart';
import 'package:tic_tac_toe/feature/history/widget/history_content.dart';

class GameHistoryPage extends StatefulWidget {
  const GameHistoryPage({super.key});

  @override
  State<GameHistoryPage> createState() => _GameHistoryPageState();
}

class _GameHistoryPageState extends State<GameHistoryPage> {
  @override
  void initState() {
    super.initState();
    context.read<GameHistoryCubit>().loadGameHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: AppSizes.zero,
        scrolledUnderElevation: AppSizes.zero,
        title: Text(
          AppTexts.history,
          style: AppTypography.bodyLarge.copyWith(color: AppColor.black),
        ),
      ),
      body: const PageBackground(widget: HistoryContent()),
    );
  }
}
