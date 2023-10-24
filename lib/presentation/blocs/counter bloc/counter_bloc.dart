part 'counter_event.dart';
part 'counter_state.dart';

import 'dart:ffi';
import 'dart:js_util';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc(): super(const CounterState()){
    on<CounterIncreased>(_onCounterIncreased);
    on<CounterReset>(_onCounterReset);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState>emit){
    emit(state.copyWith(
      counter: state.counter +event.value,
      transactionCount: state.transactionCount + 1
    ));
  }

  void _onCounterReset(CounterReset event, Emitter<CounterState> emit){
    emit(state.copyWith(
      counter:0,
    ));
  }

  void increaseBy([int value = 1]){
    add(CounterIncreased(value));
  }

  void resetCounter(){
    add(CounterReset());
  }
}