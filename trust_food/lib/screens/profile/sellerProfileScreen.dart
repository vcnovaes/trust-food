import 'package:flutter/material.dart';
import 'package:trust_food/models/seller/seller.dart';

class SellerProfileScreen extends StatelessWidget {
  final Seller seller;

  const SellerProfileScreen({super.key, required this.seller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Detalhes da conta'),
        centerTitle: true,
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
            buildDetailRow('Nome', seller.username),
            const Divider(),
            buildDetailRow('Email', seller.email),
            const Divider(),
            buildDetailRow('Telefone', seller.phone),
            const SizedBox(height: 32),
            TextButton.icon(
              onPressed: (() => {}),
              icon: const Icon(Icons.delete, color: Colors.red),
              label: const Text(
                'Deletar conta',
                style: TextStyle(color: Colors.red),
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
