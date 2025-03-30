import 'package:flutter/material.dart'; 
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';
// import 'package:trust_food/utils/firestore_test_service.dart'; // Import da função Teste

class GalleryScreen extends StatelessWidget {
  static String route(String sellerId) => '/gallery/products/$sellerId';

  final String sellerId;

  const GalleryScreen({super.key, required this.sellerId});

  // // TESTE - conexão com Firebase
  // @override
  // void initState() {
  //   super.initState();
  //   // Chama a função para carregar todos os ambulantes do Firebase quando a página for carregada
  //   getAllVendors();
  // }

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
          icon: Image.asset('assets/left_arrow.png', height: 24, width: 24),
          onPressed: () {
            context.go(BuyerHomePage.route());
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset('assets/profile_button.png', height: 45, width: 45),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 16.0),
            child: Text(
              seller.businessName,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF123859),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Image.asset(seller.galleryImage1, width: 400, height: 250, fit: BoxFit.cover),
                const SizedBox(height: 30),
                Image.asset(seller.galleryImage2, width: 400, height: 250, fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
