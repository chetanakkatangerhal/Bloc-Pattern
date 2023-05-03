import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  final int count;

  CounterState({required this.count});

  @override
  List<Object?> get props => [count];
}

class InitialCounterState extends CounterState {
  InitialCounterState() : super(count: 0);
}

class UpdatedCounterState extends CounterState {
  UpdatedCounterState({required int count}) : super(count: count);
}
