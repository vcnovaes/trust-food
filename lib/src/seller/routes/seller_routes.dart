import 'package:go_router/go_router.dart';
import 'package:trust_food/src/seller/presentation/seller_profile.dart';

class SellerRoutes {
  static final routes = [
    GoRoute(
      path: SellerProfile.route(),
      builder: (context, _) => const SellerProfile(),
    ),
  ];
}
