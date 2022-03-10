import 'package:flutter/material.dart';
import 'package:my_puzzle/src/ui/pages/game/controller/game_controller.dart';
import 'package:my_puzzle/src/ui/pages/game/widgets/puzzle_interactor.dart';
import 'package:provider/provider.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GameController(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PuzzleInteractor(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
