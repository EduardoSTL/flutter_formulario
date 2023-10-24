// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

abstract class CounterEvent{
  const CounterEvent();
}

class CounterIncreased extends CounterEvent {
  final int value;

  CounterIncreased({
    required this.value,
  });
}

class CounterReset extends CounterEvent {}
