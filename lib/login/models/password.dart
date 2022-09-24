import 'package:formz/formz.dart';

/// Holds password errors
enum PasswordValidationError {
  /// If password field is empty
  empty
}

/// Holds password view model
class Password extends FormzInput<String, PasswordValidationError> {
  /// Construct password with pure state
  const Password.pure() : super.pure('');

  /// Construct password with dirty state
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    return value.isEmpty ? PasswordValidationError.empty : null;
  }
}
