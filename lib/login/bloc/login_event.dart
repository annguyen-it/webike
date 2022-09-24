part of 'login_bloc.dart';

/// Abstract class for login events
abstract class LoginEvent extends Equatable {
  /// Default constructor
  const LoginEvent();

  @override
  List<Object> get props => [];
}

/// Event for username changes
class LoginUsernameChanged extends LoginEvent {
  /// Default constructor
  const LoginUsernameChanged(this.username);

  /// Username that user inputs from keyboard
  final String username;

  @override
  List<Object> get props => [username];
}

/// Event for password changes
class LoginPasswordChanged extends LoginEvent {
  /// Default constructor
  const LoginPasswordChanged(this.password);

  /// Username that user inputs from keyboard
  final String password;

  @override
  List<Object> get props => [password];
}

/// Event for login form submitted
class LoginSubmitted extends LoginEvent {
  /// Default constructor
  const LoginSubmitted();
}
