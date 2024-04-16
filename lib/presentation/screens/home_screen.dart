

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home-screen';
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider( // toda la vista de _CubitCounterView se envuelve en un BlocProvider para que solo aqui se pueda acceder a CounterCubit
      create: (_) => CounterCubit(),
      child: const _CubitCounterView());
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView(
        children: [
          ListTile( 
            title: const Text('Cubits'),
            subtitle: const Text('Gestor de estados simple'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              context.push('/cubits');
              // Navigator.of(context).pushNamed('form-screen');
            },
    
          ), 
          ListTile( 
            title: const Text('BloC'),
            subtitle: const Text('Gestor de estados complejo'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              context.push('/bloc');
              // Navigator.of(context).pushNamed('form-screen');
            },
    
          ),
    
        ],
      ),
    );
  }
}