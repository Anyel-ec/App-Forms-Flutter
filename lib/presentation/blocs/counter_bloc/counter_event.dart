part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable { // sealed es para que no se pueda extender la clase
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterIncreased extends CounterEvent {
  final int value;

  const CounterIncreased(this.value);

  @override
  List<Object> get props => [value];
}