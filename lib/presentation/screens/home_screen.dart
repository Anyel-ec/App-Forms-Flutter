

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home-screen';
  const HomeScreen({super.key});


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
            title: const Text('Bloc'),
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