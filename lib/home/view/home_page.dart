import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

/// App's home page
class HomePage extends StatelessWidget {
  /// Default constructor
  const HomePage({super.key});

  /// Returns route
  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: MapboxMap(
          accessToken: dotenv.get('MAPBOX_ACCESS_TOKEN'),
          initialCameraPosition: const CameraPosition(
            target: LatLng(21.040568, 105.831229),
            zoom: 12,
          ),
          styleString:
              'mapbox://styles/snowflower1408/cl8ft6c6u000514oduxhorph6',
        ),
      ),
    );
  }
}
