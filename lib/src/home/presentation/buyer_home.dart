import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_scanner.dart';
import 'package:trust_food/src/selection/presentation/select_user.dart';

class BuyerHomePage extends StatefulWidget {
  final String userId;

  const BuyerHomePage({super.key, required this.userId});

  @override
  BuyerHomePageState createState() => BuyerHomePageState();
}

class BuyerHomePageState extends State<BuyerHomePage> {
  final MapController _mapController = MapController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? _currentPosition;
  String? _userName;

  @override
  void initState() {
    super.initState();
    _determinePosition();
    _fetchUserName();
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
    });

    _mapController.move(_currentPosition!, 16);
  }

  void _toggleProfileDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Future<void> _fetchUserName() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _userName = 'Rebeca Silva'; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundColor: Color(0xFF0F5FA6),
              child: Icon(Icons.menu_open_sharp, color: Colors.white),
            ),
            onPressed: _toggleProfileDrawer,
          ),
        ],
      ),
      endDrawer: UserProfileDrawer(
        username: _userName ?? 'Usuário',
        profileImagePath: 'assets/profile.jpg',
        onLogout: () => context.go('/login'),
        menuItems: const [
          ListTile(
            leading: Icon(Icons.star, color: Color(0xFF0F5FA6)),
            title: Text(
              "Minhas Avaliações",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F5FA6),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Color(0xFF0F5FA6)),
            title: Text(
              "Favoritos",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F5FA6),
              ),
            ),
          ),
        ],
      ),
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
                      onTap: () => context.go('/home-buyer-to-seller/1'),
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
                      onTap: () => context.go('/home-buyer-to-seller/2'),
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
                      onTap: () => context.go('/home-buyer-to-seller/3'),
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
                      onTap: () => context.go('/home-buyer-to-seller/4'),
                      child: Image.asset(
                        'assets/seller_point_map.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  if (_currentPosition != null)
                    Marker(
                      width: 50,
                      height: 50,
                      point: _currentPosition!,
                      child: const Icon(
                        Icons.my_location,
                        color: Colors.blue,
                        size: 40,
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
              onTap: () => context.go(SelectUser.route()),
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
                  onTap: () => context.go(QRCodeScannerScreen.route(widget.userId)),
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

class UserProfileDrawer extends StatelessWidget {
  final String username;
  final String? profileImagePath;
  final VoidCallback onLogout;
  final List<Widget> menuItems;

  const UserProfileDrawer({
    super.key,
    required this.username,
    this.profileImagePath,
    required this.onLogout,
    this.menuItems = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildProfileHeader(),
              const Divider(height: 30, color: Colors.grey),
              ...menuItems,
              const Spacer(),
              _buildLogoutButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:
                profileImagePath != null ? AssetImage(profileImagePath!) : null,
            child: profileImagePath == null
                ? const Icon(Icons.person, size: 30)
                : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              username,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoutButton() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.red,
        ),
        onPressed: onLogout,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.logout),
            SizedBox(width: 8),
            Text("Sair"),
          ],
        ),
      ),
    );
  }
}
