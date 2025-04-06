import 'package:go_router/go_router.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/profile/presentation/seller_profile_screen.dart';
import 'package:trust_food/src/profile/presentation/seller_review_screen.dart';

class SellerRoutes {
  static final routes = [
    GoRoute(
      path:
          '/seller_profile/:sellerId', // Define the route with a dynamic parameter
      builder: (context, state) {
        final sellerId =
            state
                .pathParameters['sellerId']!; // Extract sellerId from the route
        final seller = mockSellers.firstWhere(
          (s) => s.id == sellerId,
        ); // Find the Seller object
        return SellerProfileScreen(
          seller: seller,
        ); // Pass sellerId to the screen
      },
    ),
    GoRoute(
      path: SellerReviewsScreen.route(),
      builder: (context, _) => const SellerReviewsScreen(),
    ),
  ];
}
