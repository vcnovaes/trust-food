import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_scanner.dart';
import 'package:trust_food/src/selection/presentation/select_user.dart';
// import 'package:trust_food/utils/firestore_test_service.dart'; // Import da função Teste

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
      _mapController.move(_currentPosition!, 15);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              maxZoom: 18.0,
              minZoom: 4.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(-8.062160, -34.870700),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/home-buyer-to-seller/1');
                      },
                      child: Image.asset(
                        'assets/seller_point_map.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),

                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(-8.063050, -34.871650),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/home-buyer-to-seller/2');
                      },
                      child: Image.asset(
                        'assets/seller_point_map.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),

                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(-8.060206, -34.881325),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/home-buyer-to-seller/3');
                      },
                      child: Image.asset(
                        'assets/seller_point_map.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),

                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(-8.062800, -34.879100),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/home-buyer-to-seller/4');
                      },
                      child: Image.asset(
                        'assets/seller_point_map.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 20,
            left: 20,
            child: GestureDetector(
              onTap: () {
                context.go(SelectUser.route());
              },
              child: Image.asset(
                'assets/log_out_button.png',
                width: 50,
                height: 60,
              ),
            ),
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
