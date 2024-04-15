part of 'counter_cubit.dart';

class CounterState{

  final int counter;
  final int trasactuibCounter; 


  CounterState({
     this.counter = 0,
     this.trasactuibCounter = 0
  });

  copyWith({
    int? counter,
    int? trasactuibCounter
  }) => CounterState(
    counter: counter ?? this.counter,
    trasactuibCounter: trasactuibCounter ?? this.trasactuibCounter
  );
  

}
