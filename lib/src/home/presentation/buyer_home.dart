import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/domain/models/user_model.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_scanner.dart';

class BuyerHomePage extends StatefulWidget {
  static String route() => '/buyer_home';

  const BuyerHomePage({super.key});

  @override
  BuyerHomePageState createState() => BuyerHomePageState();
}

class BuyerHomePageState extends State<BuyerHomePage> {
  final bool _showAmbulantes = false;

  List<UserModel> users = [
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
            child: Image.asset('assets/map_home_user.png', fit: BoxFit.cover),
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
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
                context.go(QRCodeScannerScreen.route());
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
