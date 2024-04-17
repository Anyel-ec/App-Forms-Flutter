import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        // envoler el widget con BlocProvider para proveer el bloc
        create: (_) => CounterBloc(),
        child: const BlocCounterView());
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({
    super.key,
  });

  void increaseCounterBy(BuildContext context, int value) {
    context
        .read<CounterBloc>()
        .add(CounterIncreased(value)); // leer el bloc y agregar un evento
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (CounterBloc counterBloc) =>
              Text('Bloc Counter: ${counterBloc.state.trasactuibCounter}'),  // leer el estado del bloc y mostrar el valor de trasactuibCounter
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterBloc>().add(
                  const CounterReset()); // leer el bloc y resetear el contador
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: context.select(
          (CounterBloc counterBloc) =>
              Text('Counter value: ${counterBloc.state.counter}'),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                increaseCounterBy(context, 3);
              },
              heroTag: 1,
              child: const Text('+3')),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {
                increaseCounterBy(context, 2);
              },
              heroTag: 2,
              child: const Text('+2')),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {
                increaseCounterBy(context, 1);
              },
              heroTag: 3,
              child: const Text('+1'))
        ],
      ),
    );
  }
}
