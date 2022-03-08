import 'package:flutter/foundation.dart';
import 'package:my_puzzle/src/domain/models/puzzle.dart';
import 'package:my_puzzle/src/ui/pages/game/controller/game_state.dart';

class GameController extends ChangeNotifier {
  GameState _state = GameState(
    crossAxisCount: 4,
    puzzle: Puzzle.create(4),
    solved: false,
    moves: 0,
  );

  GameState get state => _state;
}
