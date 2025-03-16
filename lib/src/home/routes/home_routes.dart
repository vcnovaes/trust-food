import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';
import 'package:trust_food/src/home/presentation/seller_home.dart';

class HomeRoutes {
  static final routes = [
    GoRoute(
      path: BuyerHomePage.route(),
      builder: (context, _) => const BuyerHomePage(),
    ),
    GoRoute(
      path: SellerHomePage.route(),
      builder: (context, _) => const SellerHomePage(),
    ),
  ];
}
