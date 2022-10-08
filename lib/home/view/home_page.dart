import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

/// App's home page
class HomePage extends StatefulWidget {
  /// Default constructor
  const HomePage({super.key});

  /// Returns route
  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MapboxMapController _controller;

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
          compassViewPosition: CompassViewPosition.TopRight,
          annotationConsumeTapEvents: const [AnnotationType.symbol],
          onMapCreated: (controller) {
            _controller = controller;
          },
          onStyleLoadedCallback: () async {
            await _controller.addSymbolLayer(
              'cl8fqfj0p07fe29priw1jv79r',
              'snowflower1408.cl8fqfj0p07fe29priw1jv79r-3hgi6',
              const SymbolLayerProperties(),
            );
          },
          onMapClick: (point, coordinates) async {
            debugPrint('Test ----------------------');
            debugPrint('$coordinates');
            debugPrint('$point');

            final rect = Rect.fromLTRB(
              point.x - 100,
              point.y - 100,
              point.x + 100,
              point.y + 100,
            );
            final featureList = await _controller.queryRenderedFeaturesInRect(
              rect,
              ['snowflower1408.cl8fqfj0p07fe29priw1jv79r-3hgi6'],
              null,
            );

            debugPrint('${featureList.length}');

            if (featureList.isNotEmpty) {
              for (final feature in featureList) {
                debugPrint(feature.toString());
              }
            }
          },
        ),
      ),
    );
  }
}
