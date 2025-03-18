import 'package:go_router/go_router.dart';
import 'package:trust_food/src/login/presentation/login_screen.dart';

class LoginRoutes {
  static final routes = [
    GoRoute(
      path: LoginScreen.route(),
      builder: (context, _) => const LoginScreen(),
    ),
  ];
}
