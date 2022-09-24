import 'package:equatable/equatable.dart';

/// Hold user's data model, whose logged in this app.
class User extends Equatable {
  /// Default Constructor
  const User(this.uuid);

  /// User identify.
  final String uuid;

  @override
  List<Object> get props => [uuid];

  /// Default user without any data.
  static const empty = User('-');
}
