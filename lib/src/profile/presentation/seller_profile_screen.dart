import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/domain/models/user_model.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/profile/presentation/seller_review_screen.dart';

class SellerProfileScreen extends StatelessWidget {
  static String route(String sellerId) => '/seller_profile/$sellerId';

  final Seller seller;

  const SellerProfileScreen({super.key, required this.seller});
  @override
  Widget build(BuildContext context) {
    UserModel seller = UserModel(
      email: "gustavo.lins10@gmail.com",
      phone: "99996666",
      firstName: "Gustavo",
      lastName: "Lins",
      userType: "Comerciante",
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da conta'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 24),
            buildDetailRow('Nome', "${seller.firstName} ${seller.lastName}"),
            const Divider(),
            buildDetailRow('Email', seller.email),
            const Divider(),
            buildDetailRow('Telefone', seller.phone),
            const SizedBox(height: 32),
            TextButton.icon(
              onPressed: (() => {context.go(SellerReviewsScreen.route())}),
              icon: const Icon(Icons.delete, color: Colors.red),
              label: const Text(
                'Deletar conta',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(height: 32),
            TextButton.icon(
              onPressed: (() => {context.go(SellerReviewsScreen.route())}),

              icon: const Icon(Icons.message, color: Colors.blue),
              label: const Text(
                'Ver avaliações',
                style: TextStyle(color: Colors.blue),
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
              fontWeight: FontWeight.w500,
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
