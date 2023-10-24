// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';

class CounterState extends Equeable {

  final int counter;
  final int transactionCount;

  CounterState({
    this.counter = 0,
    this.transactionCount = 0,
  });

  copyWith({
    int? counter,
    int? transactionCount,
  }) => CounterState(
    counter: counter ?? this.counter,
    transactionCount: transactionCount ?? this.transactionCount,
  );

  @override
  List<Object> get props => [counter, transactionCount];
}
