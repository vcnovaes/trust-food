import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_generator.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/buyer-to-seller/presentation/gallery_buyer_to_seller.dart';

class BuyerToSellerHomePage extends StatefulWidget {
  static String route(String sellerId) => '/home-buyer-to-seller/$sellerId';

  final String sellerId;

  const BuyerToSellerHomePage({super.key, required this.sellerId});

  @override
  State<BuyerToSellerHomePage> createState() => _BuyerToSellerHomePageState();
}

class _BuyerToSellerHomePageState extends State<BuyerToSellerHomePage> {
  late Seller seller;

  @override
  void initState() {
    super.initState();
    seller = mockSellers.firstWhere((s) => s.id == widget.sellerId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            context.go('/buyer_home');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset('assets/left_arrow.png', height: 45, width: 45),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
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
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        'Aberto',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF123859),
                        ),
                      ),
                      const SizedBox(width: 5),
                      IgnorePointer(
                        child: Switch(
                          value: seller.open,
                          activeColor: Colors.green,
                          onChanged: (_) {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        'Pode Mover-se',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF123859),
                        ),
                      ),
                      const SizedBox(width: 5),
                      IgnorePointer(
                        child: Switch(
                          value: seller.canMove,
                          activeColor: Colors.green,
                          onChanged: (_) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 8),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFF2C305),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${seller.rating}',
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                seller.description,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Color(0xFF123859),
                ),
                softWrap: true,
              ),
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                context.go('/gallery-buyer-to-seller/${seller.id}');
              },
              child: Image.asset('assets/gallery.png', width: 350, height: 50),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
