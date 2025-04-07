import 'package:flutter/material.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:go_router/go_router.dart';

class GalleryScreen extends StatelessWidget {
  static String route(String sellerId) => '/gallery/products/$sellerId';

  final String sellerId;

  const GalleryScreen({super.key, required this.sellerId});

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
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              seller.businessName,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF123859),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  _buildGalleryImage(seller.galleryImage1),
                  _buildGalleryImage(seller.galleryImage2),
                  // Add more images if needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGalleryImage(String imagePath) {
    return GestureDetector(
      onTap: () {
        // Implement lightbox effect or image viewer
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
