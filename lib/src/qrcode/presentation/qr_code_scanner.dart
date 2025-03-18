import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';

class QRCodeScannerScreen extends StatelessWidget {
  static String route() => '/qrcode/scanner';
  const QRCodeScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset('assets/ler_qr.png', fit: BoxFit.fill),
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
