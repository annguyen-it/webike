import 'dart:async';

/// Holds authentication status.
enum AuthenticationStatus {
  /// Initial status, only happens when app starts.
  unknown,

  /// Authenticated.
  authenticated,

  /// Unauthenticated.
  unauthenticated
}

/// Manages the authentication domain.
class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  /// Gets authentication status.
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.authenticated;
    yield* _controller.stream;
  }

  /// Performs login action
  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () {
        if (username.contains('a')) {
          _controller.add(AuthenticationStatus.authenticated);
        } else {
          throw Error();
        }
      },
    );
  }

  /// Performs logout action
  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  /// Disposes repository
  void dispose() => _controller.close();
}
