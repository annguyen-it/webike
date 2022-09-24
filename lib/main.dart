import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:user_repository/user_repository.dart';
import 'package:webike/app.dart';

void main() async {
  await dotenv.load(fileName: 'assets/.env');

  runApp(
    App(
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
