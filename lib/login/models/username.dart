import 'package:formz/formz.dart';

/// Holds username errors
enum UsernameValidationError {
  /// If username field is empty
  empty
}

/// Holds username view model
class Username extends FormzInput<String, UsernameValidationError> {
  /// Construct username with pure state
  const Username.pure() : super.pure('');

  /// Construct username with dirty state
  const Username.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidationError? validator(String value) {
    return value.isEmpty ? UsernameValidationError.empty : null;
  }
}
