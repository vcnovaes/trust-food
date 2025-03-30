import 'package:go_router/go_router.dart';
import 'package:trust_food/src/profile/presentation/seller_profile_screen.dart';
import 'package:trust_food/src/profile/presentation/seller_review_screen.dart';

class SellerRoutes {
  static final routes = [
    GoRoute(
      path: SellerProfileScreen.route(),
      builder: (context, _) => const SellerProfileScreen(),
    ),
    GoRoute(
      path: SellerReviewsScreen.route(),
      builder: (context, _) => const SellerReviewsScreen(),
    ),
  ];
}
