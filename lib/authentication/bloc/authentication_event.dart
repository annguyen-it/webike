part of 'authentication_bloc.dart';

/// Abstract class for authentication events
abstract class AuthenticationEvent extends Equatable {
  /// Default Constructor
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

/// Event for status changes
class AuthenticationStatusChanged extends AuthenticationEvent {
  /// Default Constructor
  const AuthenticationStatusChanged(this.status);

  /// Authentication status
  final AuthenticationStatus status;

  @override
  List<Object> get props => [status];
}

/// Event for logout action
class AuthenticationLogoutRequested extends AuthenticationEvent {}
