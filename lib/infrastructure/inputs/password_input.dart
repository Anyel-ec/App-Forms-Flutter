import 'package:formz/formz.dart';

// Define input validation errors
enum PasswordError { empty, length}

// Extend FormzInput and provide the input type and error type.
class Password extends FormzInput<String, PasswordError> {

  // Call super.pure to represent an unmodified form input.
  const Password.pure() : super.pure(''); // establecer el valor inicial

  // Call super.dirty to represent a modified form input.
  const Password.dirty(String value) : super.dirty(value); // forma en que quiero cambiar el valor

  // Override validator to handle validating a given input value.
  @override
  PasswordError? validator(String value) {
    if (value.isEmpty ) {
      return PasswordError.empty;
    } else if (value.length < 6) {
      return PasswordError.length;
    }
    
    return null;
  }
}