import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/widget/page_background.dart';
import 'package:tic_tac_toe/feature/game/widget/game_content.dart';


class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageBackground(widget: GameContent(), withPaint: false),
    );
  }
}
