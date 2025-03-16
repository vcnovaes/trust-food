import 'package:go_router/go_router.dart';
import 'package:trust_food/src/splash/presentation/splash_screeen.dart';

class SplashRoutes {
  static final routes = [
    GoRoute(
      path: SplashScreen.route(),
      builder: (context, _) => const SplashScreen(),
    ),
  ];
}
