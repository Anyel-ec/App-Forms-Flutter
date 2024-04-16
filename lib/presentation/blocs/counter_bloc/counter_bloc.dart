import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {// constructor 
    on<CounterEvent>((event, emit) {  // manejador de eventos
      emit(state.copyWith(counter: state.counter + 1)); // emitir el estado actualizado
    });
  }
}
