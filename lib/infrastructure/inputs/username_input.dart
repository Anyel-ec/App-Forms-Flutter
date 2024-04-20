import 'package:formz/formz.dart';

// Define input validation errors
enum UsernameError { empty, length}

// Extend FormzInput and provide the input type and error type.
class Username extends FormzInput<String, UsernameError> {

  // Call super.pure to represent an unmodified form input.
  const Username.pure() : super.pure(''); // establecer el valor inicial

  // Call super.dirty to represent a modified form input.
  const Username.dirty(String value) : super.dirty(value); // forma en que quiero cambiar el valor

  // Override validator to handle validating a given input value.
  @override
  UsernameError? validator(String value) {
    if (value.isEmpty ) {
      return UsernameError.empty;
    } else if (value.length < 6) {
      return UsernameError.length;
    }
    
    return null;
  }
}