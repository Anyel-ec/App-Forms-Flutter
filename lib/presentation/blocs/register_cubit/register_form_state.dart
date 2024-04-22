part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {
  final FormStatus formStatus;
  final bool isValid;
  final Username username;
  final Email email;
  final Password password;

  const RegisterFormState(
      {
      this.isValid = false,
      this.formStatus = FormStatus.invalid,
      this.username = const Username.pure(), // valor inicial
      this.email = const Email.pure(),
      this.password = const Password.pure()});

  // copiar el estado actual y cambiar el valor de formStatus
  RegisterFormState copyWith({
    FormStatus? formStatus,
    bool? isValid,
    Username? username,
    Email? email,
    Password? password,
    
  }) {
    return RegisterFormState(
      isValid: isValid ?? this.isValid,
      formStatus: formStatus ?? this.formStatus,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [
        formStatus,
        username,
        email,
        password, 
        isValid
      ]; // si son el mismo etsado no hace nada
}
