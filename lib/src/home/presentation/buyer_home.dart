import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:go_router/go_router.dart';
import 'package:geolocator/geolocator.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_scanner.dart';
import 'package:trust_food/src/gallery/presentation/gallery.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';

class BuyerHomePage extends StatefulWidget {
  static String route() => '/buyer_home';

  const BuyerHomePage({super.key});

  @override
  BuyerHomePageState createState() => BuyerHomePageState();
}

class BuyerHomePageState extends State<BuyerHomePage> {
  final MapController _mapController = MapController();
  LatLng? _currentPosition;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }
    if (permission == LocationPermission.deniedForever) return;

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
      _mapController.move(_currentPosition!, 30);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(maxZoom: 18.0, minZoom: 4.0),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              if (_currentPosition != null)
                MarkerLayer(
                  markers: mockSellers.asMap().entries.map((entry) {
                    final index = entry.key;
                    final seller = entry.value;
                    return Marker(
                      width: 50,
                      height: 50,
                      point: LatLng(
                        _currentPosition!.latitude + (index * 0.001),
                        _currentPosition!.longitude + (index * 0.001),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          context.go(GalleryScreen.route(seller.id));
                        },
                        child: Image.asset(
                          'assets/seller_point_map.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    );
                  }).toList(),
                ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/retangulo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    context.go(QRCodeScannerScreen.route());
                  },
                  child: Image.asset(
                    'assets/ler_QR_Code_Button.png',
                    width: 350,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
