import 'package:go_router/go_router.dart';
import 'package:trust_food/src/seller_detail/presentation/seller_detail_screen.dart';

class SellerDetailRoutes {
  static final routes = [
    GoRoute(
      path: '/seller_detail/:sellerId',
      builder: (context, state) {
        final sellerId = state.pathParameters['sellerId']!;
        return SellerDetailScreen(sellerId: sellerId);
      },
    ),
  ];
}
