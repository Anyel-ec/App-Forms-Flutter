part of 'counter_cubit.dart';

class CounterState extends Equatable{

  final int counter;
  final int trasactuibCounter; 


  const CounterState({
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
  
  @override
  List<Object> get props => [counter, trasactuibCounter]; // para identificar si dos objetos son iguales con equatable
  

}
