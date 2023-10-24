// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  final int transactionCount;

  CounterState({
    this.counter = 10,
    this.transactionCount = 10,
  });

  CounterState copyWith({
    int? counter,
    int? transactionCount,
  }) => CounterState(
    counter: counter ?? this.counter,
    transactionCount: transactionCount ?? this.transactionCount,
  );

  @override
  List<Object> get props => [counter, transactionCount];
}