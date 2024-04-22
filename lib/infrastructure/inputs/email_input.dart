import 'package:formz/formz.dart';

// Define input validation errors
enum EmailError { empty, format}

// Extend FormzInput and provide the input type and error type.
class Email extends FormzInput<String, EmailError> {
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');


  // Call super.pure to represent an unmodified form input.
  const Email.pure() : super.pure(''); // establecer el valor inicial

  // Call super.dirty to represent a modified form input.
  const Email.dirty(String value) : super.dirty(value); // forma en que quiero cambiar el valor

  // CREAR 
  String? get errorMessage{
    if (isValid || value.isEmpty) return null; // si es valido o esta vacio no muestro el mensaje de error
    
    if (displayError == EmailError.empty) return 'El email es requerido';
    if (displayError == EmailError.format) return 'El email no tiene un formato valido';

  }
  // Override validator to handle validating a given input value.
  @override
  EmailError? validator(String value) {
     if ( value.isEmpty || value.trim().isEmpty ) return EmailError.empty;
    if ( !emailRegExp.hasMatch(value) ) return EmailError.format;

    return null;
  }
}