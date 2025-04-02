import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:trust_food/src/buyer-to-seller/presentation/home_buyer_to_seller.dart';
import 'package:trust_food/src/buyer-to-seller/presentation/gallery_buyer_to_seller.dart';
import 'package:trust_food/src/buyer-to-seller/presentation/qr_code_generator_buyer_to_seller.dart';

class BuyerToSellerHomeRoutes {
  static final routes = [
    GoRoute(
      path: '/home-buyer-to-seller/:sellerId',
      builder: (context, state) {
        final sellerId = state.pathParameters['sellerId']!;
        return BuyerToSellerHomePage(sellerId: sellerId);
      },
    ),
    GoRoute(
      path: '/gallery-buyer-to-seller/:sellerId',
      builder: (context, state) {
        final sellerId = state.pathParameters['sellerId']!;
        return GalleryBuyerToSeller(sellerId: sellerId);
      },
    ),
    GoRoute(
      path: '/qrcode-generator-buyer-to-seller/:sellerId',
      builder: (context, state) {
        final sellerId = state.pathParameters['sellerId']!;
        return QRCodeGeneratorBuyerToSeller(sellerId: sellerId);
      },
    ),
  ];
}
