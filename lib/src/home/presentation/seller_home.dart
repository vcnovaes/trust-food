import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_generator.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/gallery/presentation/gallery.dart';
import 'package:trust_food/src/selection/presentation/select_user.dart';

class SellerHomePage extends StatelessWidget {
  static String route(String sellerId) => '/seller_home/$sellerId';

  final String sellerId;

  const SellerHomePage({super.key, required this.sellerId});

  @override
  Widget build(BuildContext context) {
    final seller = mockSellers.firstWhere((s) => s.id == sellerId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () {
            context.go(SelectUser.route());
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset(
              'assets/log_out_button.png',
              height: 55,
              width: 55,
            ),
          ),
        ),
        actions: [
          Builder(
            builder:
                (context) => IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Color(0xFF123859),
                  ), // Hamburger icon
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer(); // Open the end drawer
                  },
                ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF123859)),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Gallery'),
              onTap: () {
                context.go(GalleryScreen.route(sellerId));
              },
            ),
            ListTile(
              leading: Icon(Icons.qr_code),
              title: Text('QR Code Generator'),
              onTap: () {
                context.go(QRCodeGeneratorScreen.route(sellerId));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                context.go(SelectUser.route());
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            Image.asset(
              seller.homeImage,
              width: MediaQuery.of(context).size.width,
              height: 240,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32.0),
              child: Row(
                children: [
                  Text(
                    seller.businessName,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859),
                    ),
                  ),
                  SizedBox(width: 8),
                  Image.asset('assets/green_check.png', height: 24, width: 24),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  Text(
                    'Aberto',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859),
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.asset('assets/toggle_on.png', height: 35, width: 35),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 8),
              child: Row(
                children: [
                  Icon(Icons.star, color: Color(0xFFF2C305)),
                  SizedBox(width: 4),
                  Text(
                    '${seller.rating}',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859),
                    ),
                  ),
                ],
              ),
            ),
            TextSection(description: seller.description),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                context.go(GalleryScreen.route(sellerId));
              },
              child: Image.asset('assets/gallery.png', width: 350, height: 50),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                context.go(QRCodeGeneratorScreen.route(sellerId));
              },
              child: Image.asset(
                'assets/QRcodebutton.png',
                width: 350,
                height: 50,
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        description,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: Color(0xFF123859),
        ),
        softWrap: true,
      ),
    );
  }
}
