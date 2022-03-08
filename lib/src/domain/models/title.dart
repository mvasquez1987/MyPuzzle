import 'package:equatable/equatable.dart';
import 'package:my_puzzle/src/domain/models/position.dart';

class Title extends Equatable {
  final int value;
  final Position position;
  final Position correctPosition;

  const Title({
    required this.value,
    required this.position,
    required this.correctPosition,
  });

  Title move(Position newPosition) {
    return Title(
        value: value, correctPosition: correctPosition, position: newPosition);
  }

  @override
  List<Object?> get props => [
        position,
        correctPosition,
        value,
      ];
}
