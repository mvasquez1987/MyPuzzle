import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:my_puzzle/src/domain/models/position.dart';
import 'package:my_puzzle/src/domain/models/title.dart';

class Puzzle extends Equatable {
  final List<Title> tiles;
  final Position emptyPosition;

  const Puzzle._({
    required this.tiles,
    required this.emptyPosition,
  });

  factory Puzzle.create(int crossAxisCount) {
    int value = 1;
    final tiles = <Title>[];

    final emptyPosition = Position(x: crossAxisCount, y: crossAxisCount);
    for (int y = 1; y <= crossAxisCount; y++) {
      for (int x = 1; x <= crossAxisCount; x++) {
        final add = !(x == crossAxisCount && y == crossAxisCount);
        if (add) {
          final position = Position(x: x, y: y);
          final tile = Title(
              value: value, position: position, correctPosition: position);
          tiles.add(tile);
          value++;
        }
      }
    }
    return Puzzle._(
      tiles: tiles,
      emptyPosition: emptyPosition,
    );
  }

  @override
  List<Object?> get props => [
        tiles,
        emptyPosition,
      ];
}
