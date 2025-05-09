import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';

class QRCodeScannerScreen extends StatelessWidget {
  static String route() => '/qrcode/scanner';

  const QRCodeScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Camera Scanner
          MobileScanner(
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              for (final barcode in barcodes) {
                context.go('${barcode.rawValue}');
              }
            },
          ),

          Container(
            color: Colors.black.withValues(alpha: (0.5 * 255).toDouble()),
          ),

          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Text(
              "Aponte a câmera para o código",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          Center(
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () {
                context.go(BuyerHomePage.route());
              },
              child: Image.asset('assets/voltar.png', width: 100, height: 100),
            ),
          ),
        ],
      ),
    );
  }
}
