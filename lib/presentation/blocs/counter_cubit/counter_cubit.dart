import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:meta/meta.dart';

part 'counter_state.dart';
class CounterCubit extends Cubit<CounterState>{

  // Constructor en donde se extiende y hereda de la clase CounterState
  CounterCubit() : super(const CounterState(counter: 5 ));

  void increaseBy (int value){ // increamentar 
    emit(state.copyWith(counter: state.counter + value, trasactuibCounter: state.trasactuibCounter + 1)); // con copyWith es opcional los dos parametros
  }

  void reset(){
    emit(state.copyWith(counter: 0)); // con copyWith es opcional los dos parametros
  }


}