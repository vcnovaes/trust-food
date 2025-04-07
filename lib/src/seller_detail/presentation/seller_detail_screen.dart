// seller detail screen

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/shared/presentation/seller_content.dart';

class SellerDetailScreen extends StatelessWidget {
  final String sellerId;
  
  const SellerDetailScreen({
    super.key,
    required this.sellerId,
  });

  static String route(String sellerId) => '/seller_detail/$sellerId';

  @override
  Widget build(BuildContext context) {
    return SellerContent(
      sellerId: sellerId,
      isSellerView: false,
      onBackPressed: () => context.go('/buyer_home'),
    );
  }
}
