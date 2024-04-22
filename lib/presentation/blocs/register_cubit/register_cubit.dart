import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:forms_app/infrastructure/inputs/email_input.dart';
import 'package:forms_app/infrastructure/inputs/inputs.dart';
import 'package:formz/formz.dart';

part 'register_form_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());

  // metodos que cambian el estado del formulario
  void usernameChanged(String value) {
    final username = Username.dirty(value); // valor modificado

    emit(state.copyWith(
      username: username,
      isValid: Formz.validate([username, state.password, state.email]) // validar que el username y el password sean validos
    ));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(email: email, isValid: Formz.validate([email, state.username, state.password])));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(password: password, isValid: Formz.validate([password, state.username, state.email])));
  }

  void register(){

    emit(state.copyWith(
      formStatus: FormStatus.validating, 
      username: Username.dirty(state.username.value), 
      password: Password.dirty(state.password.value), 
      email: Email.dirty(state.email.value),
      isValid: Formz.validate(
        [state.username, state.password, state.email] // TODO: Add email validation
      )
      , // dirty es para indicar que el valor ha cambiado
      ));
          print('Cubit Submit: $state');

  }
}
