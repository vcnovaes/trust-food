import 'package:flutter/material.dart';

class SellerReviewsScreen extends StatelessWidget {
  static String route() => '/seller/reviews';

  SellerReviewsScreen({super.key});

  final double rating = 4.0;
  final int totalReviews = 233;
  final List<Map<String, dynamic>> reviews = [
    {
      'name': 'Maria Luiza',
      'comment':
          'Muito bom! Tudo higienizado, e também muito gostoso! Recomendo.',
      'stars': 5,
    },
    {
      'name': 'Lázaro',
      'comment': 'Eu gostei muito, mas tinha mosca por perto.',
      'stars': 4,
    },
    {
      'name': 'Joana',
      'comment':
          'Pra mim foi perfeito, fazia tempo que não comia, foi muito bom.',
      'stars': 5,
    },
    {
      'name': 'Pedro',
      'comment': 'Foi bom, mas no dia estava com muito inseto.',
      'stars': 3,
    },
    {
      'name': 'Carlos',
      'comment': 'Muito inseto, moscas, desisti e não comprei.',
      'stars': 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        actions: [IconButton(icon: const Icon(Icons.menu), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Rafael André",
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
                                review['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              buildStars(review['stars'].toDouble()),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(review['comment']),
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
