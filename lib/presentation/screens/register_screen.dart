import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/register_cubit/register_cubit.dart';
import 'package:forms_app/presentation/blocs/register_cubit/register_cubit.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Usuario'),
      ),
      body: BlocProvider(
        create: (context) => RegisterCubit(),
        child: const _RegisterView(),
      ),
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
              SizedBox(height: 20),
              _RegisterForm(),
              SizedBox(height: 20),
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
    final registerCubit = context.watch<
        RegisterCubit>(); // cuando el estado cambia se vuelve a renderizar

    final username = registerCubit.state.username;
    final password = registerCubit.state.password;
    final email = registerCubit.state.email;

    return Form(
        child: Column(
      children: [

        CustomTextFormField(
          label: 'Nombre de usuario',
          prefixIcon: const Icon(Icons.person),
          onChanged: registerCubit.usernameChanged,
          errorMessage: username.errorMessage, // mostrar el mensaje de error
        ),
        

        const SizedBox(height: 20),


        CustomTextFormField(
          label: 'Correo electrónico',
          prefixIcon: const Icon(Icons.email),
          onChanged: registerCubit.emailChanged, 
          errorMessage: email.errorMessage,
        ),


        const SizedBox(height: 20),

        CustomTextFormField(
          label: 'Contraseña',
          prefixIcon: const Icon(Icons.lock),
          onChanged: registerCubit.passwordChanged,
          errorMessage: password.errorMessage,
        ),




        const SizedBox(height: 20),
        FilledButton.tonalIcon(
          onPressed: () {
            registerCubit.register();
          },
          label: const Text('Guardar'),
          icon: const Icon(Icons.save),
        )
      ],
    ));
  }
}
