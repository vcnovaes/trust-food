import 'package:flutter/material.dart';
import 'package:trust_food/screens/home/buyerHome.dart'; 

class QRCodeScannerPage extends StatelessWidget {
  const QRCodeScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image (ler_qr) inside a Container to control size
          Positioned.fill(
            child: Container(
              width: double.infinity,  // Ensures it spans the width of the screen
              height: double.infinity, // Ensures it spans the height of the screen
              child: Image.asset(
                'assets/ler_qr.png', // Ensure the image is in the assets folder
                fit: BoxFit.fill,  // This will stretch the image to fill the entire screen
              ),
            ),
          ),
          // Back Button (voltar.png) with increased size
          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Go back to the BuyerHomePage
              },
              child: Image.asset(
                'assets/voltar.png', // Ensure the image is in the assets folder
                width: 100,  // Increased width
                height: 100, // Increased height
              ),
            ),
          ),
          // Add other widgets/elements you need here (e.g., QR code scanner)
        ],
      ),
    );
  }
}
