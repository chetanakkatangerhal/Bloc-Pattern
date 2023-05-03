import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/counter_event.dart';
import 'package:flutter_bloc_demo/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCounterState());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield UpdatedCounterState(count: state.count + 1);
    } else if (event is DecrementEvent) {
      yield UpdatedCounterState(count: state.count - 1);
    }
  }
}


  
