import 'package:go_router/go_router.dart';
import 'package:trust_food/src/signup/presentation/common_sign_up.dart';
import 'package:trust_food/src/signup/presentation/success_sign_up_page.dart';

class SignUpRoutes {
  static final routes = [
    GoRoute(
      path: SignUpCommon.route(),
      builder: (context, _) => const SignUpCommon(),
    ),
    GoRoute(
      path: SignUpSuccessPage.route(),
      builder: (context, _) => const SignUpSuccessPage(),
    ),
  ];
}
