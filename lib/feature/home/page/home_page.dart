import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/widget/page_background.dart';
import 'package:tic_tac_toe/feature/home/widget/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageBackground(widget: HomeContent())
    );
  }
}
