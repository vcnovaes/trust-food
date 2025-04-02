import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/routes/home_routes.dart';
import 'package:trust_food/src/login/routes/login_routes.dart';
import 'package:trust_food/src/profile/routes/seller_routes.dart';
import 'package:trust_food/src/qrcode/routes/qr_code_routes.dart';
import 'package:trust_food/src/signup/routes/sign_up_routes.dart';
import 'package:trust_food/src/splash/presentation/splash_screeen.dart';
import 'package:trust_food/src/splash/routes/splash_routes.dart';
import 'package:trust_food/src/gallery/routes/gallery_routes.dart';
import 'package:trust_food/src/selection/routes/select_user_routes.dart';
import 'package:trust_food/src/buyer-to-seller/routes/home_buyer_to_seller_routes.dart';

final router = GoRouter(
  initialLocation: SplashScreen.route(),
  routes: [
    ...HomeRoutes.routes,
    ...LoginRoutes.routes,
    ...SellerRoutes.routes,
    ...QrCodeRoutes.routes,
    ...SignUpRoutes.routes,
    ...SplashRoutes.routes,
    ...GalleryRoutes.routes,
    ...SelectUserRoutes.routes,
    ...BuyerToSellerHomeRoutes.routes,
  ],
);
