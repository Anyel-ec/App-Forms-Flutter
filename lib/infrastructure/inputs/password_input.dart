import 'package:formz/formz.dart';

// Define input validation errors
enum PasswordError { empty, length}

// Extend FormzInput and provide the input type and error type.
class Password extends FormzInput<String, PasswordError> {

  // Call super.pure to represent an unmodified form input.
  const Password.pure() : super.pure(''); // establecer el valor inicial

  // Call super.dirty to represent a modified form input.
  const Password.dirty(String value) : super.dirty(value); // forma en que quiero cambiar el valor


String? get errorMessage{
    if (isValid || value.isEmpty) return null; // si es valido o esta vacio no muestro el mensaje de error
    
    if (displayError == PasswordError.empty) return 'La contraseña es requerida';
    if (displayError == PasswordError.length) return 'La contraseña debe tener al menos 6 caracteres';
  }

  // Override validator to handle validating a given input value.
  @override
  PasswordError? validator(String value) {
    if ( value.isEmpty || value.trim().isEmpty ) return PasswordError.empty;
    if ( value.length < 6 ) return PasswordError.length;

    return null;
  }
}