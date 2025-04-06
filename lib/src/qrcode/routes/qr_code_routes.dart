import 'package:go_router/go_router.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_generator.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_scanner.dart';

class QrCodeRoutes {
  static final routes = [
    GoRoute(
      path: QRCodeScannerScreen.route(),
      builder: (context, state) {
        return const QRCodeScannerScreen();
      },
    ),
    GoRoute(
      path: QRCodeGeneratorScreen.route(':sellerId'),
      builder: (context, state) {
        final sellerId = state.pathParameters['sellerId']!;
        return QRCodeGeneratorScreen(sellerId: sellerId);
      },
    ),
  ];
}
