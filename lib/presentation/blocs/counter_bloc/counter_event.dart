part of 'counter_bloc.dart';

sealed class CounterEvent{ // sealed es para que no se pueda extender la clase
  const CounterEvent();
}

class CounterIncreased extends CounterEvent {
  final int value;

  const CounterIncreased(this.value);

 
}

class CounterReset extends CounterEvent {
  const CounterReset(); // 
}