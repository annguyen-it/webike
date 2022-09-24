import 'package:flutter/material.dart';

/// Shows when logging in or logging out
class SplashPage extends StatelessWidget {
  /// Default constructor
  const SplashPage({super.key});

  /// Returns route
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
