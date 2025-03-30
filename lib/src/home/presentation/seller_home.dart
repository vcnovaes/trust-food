import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_generator.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/gallery/presentation/gallery.dart';

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
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/profile_button.png', height: 45, width: 45),
              ),
            ),
            SizedBox(height: 16),

            Image.asset(seller.homeImage, width: 600, height: 240, fit: BoxFit.cover),
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
                  Icon(
                    Icons.star,
                    color: Color(0xFFF2C305),
                  ),
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
            TextSection(
              description: seller.description,
            ),
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
              child: Image.asset('assets/QRcodebutton.png', width: 350, height: 50),
            ),
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
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}
