import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Usuario'),
      ),
      body: const _RegisterView(),
    );
  }
}


class _RegisterView extends StatelessWidget {
  const _RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const FlutterLogo(size: 100),
              TextFormField(), 
              TextFormField(),
              TextFormField(),
              TextFormField(),
              const SizedBox(height: 20),
              FilledButton.tonalIcon(
                onPressed: (){}, 
                icon: const Icon(Icons.save),
                label: const Text ('Guardar')
              ), 
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}