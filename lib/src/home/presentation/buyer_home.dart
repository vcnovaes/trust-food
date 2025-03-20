import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/domain/models/user_model.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_scanner.dart';

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
              _buildMenuList(),
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
            backgroundImage: profileImagePath != null
                ? AssetImage(profileImagePath!)
                : null,
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

  Widget _buildMenuList() {
    return Expanded(
      child: ListView(
        children: menuItems,
      ),
    );
  }

    Widget _buildLogoutButton() {
      return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            onPressed: onLogout,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.logout),
                const SizedBox(width: 8),
                const Text("Sair"),
              ],
            ),
          ),
        ),
      );
    }
}

class BuyerHomePage extends StatefulWidget {
  static String route() => '/buyer_home';
  const BuyerHomePage({super.key});
  @override
  BuyerHomePageState createState() => BuyerHomePageState();
}

class BuyerHomePageState extends State<BuyerHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _showAmbulantes = false;
  final List<UserModel> users = [
    UserModel(
      email: "gustavo.lins10@gmail.com",
      phone: "99996666",
      firstName: "Gustavo",
      lastName: "Lins",
      userType: "Comerciante",
    ),
    UserModel(
      email: "albertob@gmail.com",
      phone: "99996666",
      firstName: "Alberto",
      lastName: "Bomfim",
      userType: "Consumidor",
    ),
  ];

  void _toggleAmbulantes() {
    setState(() {
      _showAmbulantes = !_showAmbulantes;
    });
  }

  void _toggleProfileDrawer() {
    if (_scaffoldKey.currentState!.isEndDrawerOpen) {
      _scaffoldKey.currentState!.closeEndDrawer();
    } else {
      _scaffoldKey.currentState!.openEndDrawer();
    }
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/map_home_user.png', fit: BoxFit.cover),
          ),
        ],
      ),
      endDrawer: UserProfileDrawer(
        username: "Gildo Come",
        profileImagePath: 'assets/profile.jpg',
        onLogout: () => context.go('/login'),
        menuItems: const [
          ListTile(
            leading: Icon(Icons.star, color: Color(0xFF0F5FA6)),
            title: Text("Minhas Avaliacoes", 
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
            title: Text("Favoritos", 
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
      bottomNavigationBar: Container(
        color: const Color(0xFFE2EAF0),
        padding: const EdgeInsets.symmetric(vertical: 20),
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _toggleAmbulantes,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/ambulante.png', width: 24, height: 24),
                  const SizedBox(width: 8),
                  const Text(
                    "Ambulantes por Perto",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F5FA6),
                    ),
                  ),
                ],
              ),
            ),
            if (_showAmbulantes) ...[
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: users.where((user) => user.userType == "Comerciante").length,
                  itemBuilder: (context, index) {
                    final user = users.where((user) => user.userType == "Comerciante").toList()[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text(
                        "${user.firstName} ${user.lastName}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0F5FA6),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () => context.go(QRCodeScannerScreen.route()),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/qr_code_1.png', width: 24, height: 24),
                  const SizedBox(width: 8),
                  const Text(
                    "Ler QR Code",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
