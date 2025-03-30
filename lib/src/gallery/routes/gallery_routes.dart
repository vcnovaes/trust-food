import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:trust_food/src/gallery/presentation/gallery.dart';

class GalleryRoutes {
  static final routes = [
    GoRoute(
      path: '/gallery/products/:sellerId',
      builder: (context, state) {
        final sellerId = state.pathParameters['sellerId']!;
        return GalleryScreen(sellerId: sellerId);
      },
    ),
  ];
}
