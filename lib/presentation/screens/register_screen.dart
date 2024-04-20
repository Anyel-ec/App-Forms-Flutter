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
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.watch<
        RegisterCubit>(); // cuando el estado cambia se vuelve a renderizar

    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
              label: 'Nombre de usuario',
              prefixIcon: const Icon(Icons.person),
              onChanged: (value) {
                registerCubit.usernameChanged(value);
                _formKey.currentState!.validate();
              },
              validator: (value) {
                if (value == null) {
                  return 'El nombre de usuario es requerido';
                }
                if (value.isEmpty) {
                  return 'El nombre de usuario es requerido';
                }
                // debe de tener mas de 6 letras
                if (value.length < 6) {
                  return 'El nombre de usuario debe de tener al menos 6 caracteres';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              label: 'Correo electrónico',
              prefixIcon: const Icon(Icons.email),
              onChanged: (value) {
                registerCubit
                    .emailChanged(value); // cambia el estado del formulario
                _formKey.currentState!.validate(); // valida el campo
              },
              validator: (value) {
                if (value == null) {
                  return 'El correo electrónico es requerido';
                }
                if (value.isEmpty) {
                  return 'El correo electrónico es requerido';
                }
                if (!value.contains('@')) {
                  return 'El correo electrónico no es válido';
                }
                final emailRegExp = RegExp(
                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                );

                if (!emailRegExp.hasMatch(value)) {
                  return 'El correo electrónico no es válido';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              label: 'Contraseña',
              prefixIcon: const Icon(Icons.lock),
              obscureText: true,
              onChanged: (value) {
                registerCubit
                    .passwordChanged(value); // cambia el estado del formulario
                _formKey.currentState!.validate(); // valida el campo
              },
              validator: (value) {
                if (value == null) {
                  return 'La contraseña es requerida';
                }
                if (value.isEmpty) {
                  return 'La contraseña es requerida';
                }
                if (value.length < 6) {
                  return 'La contraseña debe de tener al menos 6 caracteres';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            FilledButton.tonalIcon(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
                registerCubit.register();
              },
              label: const Text('Guardar'),
              icon: const Icon(Icons.save),
            )
          ],
        ));
  }
}
