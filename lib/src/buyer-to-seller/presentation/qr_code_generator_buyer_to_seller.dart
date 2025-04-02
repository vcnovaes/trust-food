import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/buyer-to-seller/presentation/home_buyer_to_seller.dart';

class QRCodeGeneratorBuyerToSeller extends StatelessWidget {
  final String sellerId;

  const QRCodeGeneratorBuyerToSeller({super.key, required this.sellerId});

  static String route(String sellerId) => '/qrcode/generator/$sellerId';

  @override
  Widget build(BuildContext context) {
    final seller = mockSellers.firstWhere((s) => s.id == sellerId);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Image.asset('assets/left_arrow.png', height: 45, width: 45),
          onPressed: () {
            context.go(BuyerToSellerHomePage.route(sellerId));
          },
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    seller.businessName,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset('assets/green_check.png', height: 24, width: 24),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, right: 10.0),
            child: Text(
              "Basta apontar a câmera\n para o QR Code abaixo",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F5FA6),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
              child: Image.asset(
                'assets/qr_code_2.png',
                height: 200,
                width: 500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
