import 'package:go_router/go_router.dart';
import 'package:trust_food/src/selection/presentation/select_user.dart'; 

class SelectUserRoutes {
  static final routes = [
    GoRoute(
      path: SelectUser.route(), 
      builder: (context, _) => const SelectUser(), 
    ),
  ];
}
