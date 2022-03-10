import 'package:flutter/foundation.dart';
import 'package:my_puzzle/src/domain/models/puzzle.dart';
import 'package:my_puzzle/src/domain/models/title.dart';
import 'package:my_puzzle/src/ui/pages/game/controller/game_state.dart';

class GameController extends ChangeNotifier {
  GameState _state = GameState(
    crossAxisCount: 4,
    puzzle: Puzzle.create(4),
    solved: false,
    moves: 0,
  );

  GameState get state => _state;
  Puzzle get puzzle => _state.puzzle;

  void onTileTapped(
    Tile tile,
  ) {
    final canMove = puzzle.canMove(tile.position);
    if (canMove) {
      _state = state.copyWith(
        puzzle: puzzle.move(tile),
      );
      notifyListeners();
    }
  }
}
