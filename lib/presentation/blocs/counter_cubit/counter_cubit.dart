import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:meta/meta.dart';

part 'counter_state.dart';
class CounterCubit extends Cubit<CounterState>{

  // Constructor en donde se extiende y hereda de la clase CounterState
  CounterCubit() : super(CounterState(counter: 5 ));

  void increaseBy (int value){ // increamentar 
    emit(state.copyWith(counter: state.counter + value)); // con copyWith es opcional los dos parametros
  }

  void reset(){
    emit(state.copyWith(counter: 0)); // con copyWith es opcional los dos parametros
  }


}