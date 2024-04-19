import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

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
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterLogo(size: 100),

              _RegisterForm(), 

             
              
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {

  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [

          CustomTextFormField(),
          const SizedBox(height: 20),
          CustomTextFormField(),

          const SizedBox(height: 20),

          FilledButton.tonalIcon(
            onPressed: (){},
            label: const Text('Guardar'),
            icon: const Icon(Icons.save),
          )
        ],
      )
    );
  }
}