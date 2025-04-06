import 'package:flutter/material.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';

class SellerReviewsScreen extends StatelessWidget {
  static String route(String sellerId) => '/reviews/$sellerId';
  String sellerId;
  Color brandBlue = Color(0xFF0F5FA6);

  double getRating(List<Review> reviews) {
    double totalRating = 0;
    for (var review in reviews) {
      totalRating += review.rating;
    }
    return totalRating / reviews.length;
  }

  late Seller seller;
  SellerReviewsScreen({super.key, required this.sellerId}) {
    seller = mockSellers.firstWhere((s) => s.id == sellerId);
  }

  User getUserById(String id) {
    return mockUsers.firstWhere((user) => user.id == id);
  }

  Seller getSellerById(String id) {
    return mockSellers.firstWhere((seller) => seller.id == id);
  }

  @override
  Widget build(BuildContext context) {
    final List<Review> reviews =
        mockReviews.where((review) => review.sellerId == sellerId).toList();
    final int totalReviews = reviews.length;
    final double rating = getRating(reviews);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Avaliações recebidas',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/left_arrow.png', height: 45, width: 45),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "${seller.firstName} ${seller.lastName}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.verified, color: Colors.green, size: 20),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(rating.toString(), style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 4),
                buildStars(rating),
                const SizedBox(width: 4),
                Text(
                  '($totalReviews)',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  final review = reviews[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                getUserById(review.userId).firstName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              buildStars(review.rating),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(review.comment),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // QR Code logic here
                },
                icon: const Icon(Icons.qr_code),
                label: const Text('Mostrar QR Code'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStars(double stars) {
    return Row(
      children: List.generate(5, (index) {
        if (index < stars.floor()) {
          return const Icon(Icons.star, color: Colors.amber, size: 18);
        } else if (index < stars) {
          return const Icon(Icons.star_half, color: Colors.amber, size: 18);
        } else {
          return const Icon(Icons.star_border, color: Colors.amber, size: 18);
        }
      }),
    );
  }
}
