part of 'login_bloc.dart';

/// Holds login data state
class LoginState extends Equatable {
  /// Default constructor
  const LoginState({
    this.status = FormzStatus.pure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
  });

  /// Form status
  final FormzStatus status;

  /// Form username
  final Username username;

  /// Form password
  final Password password;

  /// Copy to a new object with passed params
  LoginState copyWith({
    FormzStatus? status,
    Username? username,
    Password? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [status, username, password];
}
