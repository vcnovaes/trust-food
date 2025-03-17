import 'package:flutter/material.dart';

class SellerMapScreen extends StatefulWidget {
  static String route() => '/seller/map';

  const SellerMapScreen({super.key});

  @override
  SellerMapState createState() => SellerMapState();
}

class SellerMapState extends State<SellerMapScreen> {
  bool _showCircles = false;

  void _toggleCircles() {
    setState(() {
      _showCircles = !_showCircles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/map_home_user.png', fit: BoxFit.cover),
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
          if (_showCircles) ...[
            Positioned(
              top: 200,
              left: 50,
              child: Image.asset('assets/circle.png', width: 100, height: 100),
            ),
            Positioned(
              top: 400,
              right: 50,
              child: Image.asset('assets/circle.png', width: 100, height: 100),
            ),
          ],
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFE2EAF0),
        padding: EdgeInsets.symmetric(vertical: 20),
        height: 120,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF0F5FA6),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: _toggleCircles,
            child: Text(
              "Áreas Movimentadas",
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
