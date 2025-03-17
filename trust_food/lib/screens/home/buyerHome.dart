import 'package:flutter/material.dart';
import 'package:trust_food/screens/selection/userModel.dart';
import 'package:trust_food/screens/qrcode/qrCodeScanner.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({super.key});

  @override
  _BuyerHomePageState createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  bool _showAmbulantes = false;

  List<UserModel> users = [
    UserModel("gustavo.lins10@gmail.com", "99996666", "Gustavo", "Lins", "Comerciante"),
    UserModel("albertob@gmail.com", "99996666", "Alberto", "Bomfim", "Consumidor"),
  ];

  List<UserModel> get recommendedUsers =>
      users.where((user) => user.userType == "Comerciante").toList();

  void _toggleAmbulantes() {
    // nothing
    // nothing
    // nothing
    // nothing
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/map_home_user.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                'assets/left_arrow.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFE2EAF0),
        padding: EdgeInsets.symmetric(vertical: 20),
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
                  SizedBox(width: 8),
                  Text(
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
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: recommendedUsers.length,
                  itemBuilder: (context, index) {
                    final user = recommendedUsers[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text(
                        "${user.firstName} ${user.lastName}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
            SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0F5FA6),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QRCodeScannerPage()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/qr_code_1.png', width: 24, height: 24),
                  SizedBox(width: 8),
                  Text(
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
