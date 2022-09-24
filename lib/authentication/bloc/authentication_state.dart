part of 'authentication_bloc.dart';

/// Holds authentication data state
class AuthenticationState extends Equatable {
  // Constructors
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user = User.empty,
  });

  /// The default state which indicates that the BLoC does not yet know whether
  /// the current user is authenticated or not.
  const AuthenticationState.unknown() : this._();

  /// The state which indicates that the user is current authenticated
  const AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  /// The state which indicates that the user is current not authenticated
  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  // Properties
  /// Authentication status
  final AuthenticationStatus status;

  /// Logged in user
  final User user;

  // Getters
  @override
  List<Object> get props => [status, user];
}
