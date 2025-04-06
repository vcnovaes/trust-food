import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/profile/presentation/seller_review_screen.dart';

class SellerProfileScreen extends StatelessWidget {
  static String route(String sellerId) => '/seller_profile/$sellerId';

  final Seller seller;

  const SellerProfileScreen({super.key, required this.seller});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes da conta',
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
          icon: Image.asset('assets/left_arrow.png', height: 50, width: 45),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFF0F5FA6),
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 24),
            buildDetailRow('Nome', "${seller.firstName} ${seller.lastName}"),
            const Divider(color: Color(0xFFD9D9D9)),
            buildDetailRow('Email', seller.email),
            const Divider(color: Color(0xFFD9D9D9)),
            buildDetailRow('Telefone', seller.phone),
            const SizedBox(height: 32),
            TextButton.icon(
              onPressed: (() => {context.pop()}),
              icon: const Icon(Icons.delete, color: Colors.red),
              label: const Text(
                'Deletar conta',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(height: 32),
            TextButton.icon(
              onPressed:
                  (() => {context.push(SellerReviewsScreen.route(seller.id))}),

              icon: const Icon(Icons.message, color: Color(0xFF0F5FA6)),
              label: const Text(
                'Ver avaliações',
                style: TextStyle(color: Color(0xFF0F5FA6)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
