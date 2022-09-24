import 'package:user_repository/src/models/models.dart';
import 'package:uuid/uuid.dart';

/// Manages the user domain.
class UserRepository {
  User? _user;

  /// Get logged in user data
  Future<User?> getUser() async {
    if (_user != null) return _user;

    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = User(const Uuid().v4()),
    );
  }
}
