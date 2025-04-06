import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';
import 'package:trust_food/src/home/presentation/seller_home.dart';

class HomeRoutes {
  static final routes = [
    GoRoute(
      path: '/buyer_home',
      builder: (context, state) {
        return const BuyerHomePage();
      },
    ),
    GoRoute(
      path: '/seller_home/:sellerId',
      builder: (context, state) {
        final sellerId = state.pathParameters['sellerId']!;
        return SellerHomePage(sellerId: sellerId);
      },
    ),
  ];
}
