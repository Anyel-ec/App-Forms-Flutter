import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const _CubitCounterView());
  }
}

class _CubitCounterView extends StatelessWidget {
  
  const _CubitCounterView();

  // metodo para incrementar el contador por un valor (PARAMETRIZADO)
  void increateCounterBy(BuildContext context, [int value = 1]){
    context.read<CounterCubit>().increaseBy(value);
  }
  @override
  Widget build(BuildContext context) {
   final counterState = context.watch<CounterCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title:  Text('Cubit Counter: ${counterState.trasactuibCounter}'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterCubit>().reset(); // se llama al metodo reset de CounterCubit
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      
      body:  Center(
        child: BlocBuilder<CounterCubit, CounterState>(
         // buildWhen: (previous, current) => previous.counter != current.counter, // se cambia el estado solo si el valor del contador cambia
          builder: (context, state){
            return Text('Counter value is ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                increateCounterBy(context, 3); // se llama al metodo increateCounterBy de _CubitCounterView
              }, heroTag: 1, child: const Text('+3')),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {
                increateCounterBy(context, 2); // se llama al metodo increateCounterBy de _CubitCounterView
              }, heroTag: 2, child: const Text('+2')),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {
                increateCounterBy(context); // se llama al metodo increateCounterBy de _CubitCounterView
              }, heroTag: 3, child: const Text('+1'))
        ],
      ),
    );
  }
}
