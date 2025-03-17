import 'package:flutter/material.dart';

class QRCodeGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Ensures pure white background
      appBar: AppBar(
        backgroundColor: Colors.white, // Makes the app bar match the background
        elevation: 0, // Removes shadow for a cleaner look
        iconTheme: IconThemeData(color: Colors.black), // Adjusts back button color if needed
        leading: IconButton(
          icon: Image.asset(
            'assets/left_arrow.png', // Path to your left arrow image
            height: 24, // Adjust the height as needed
            width: 24, // Adjust the width as needed
          ),
          onPressed: () {
            // Define what happens when the icon is pressed
            Navigator.pop(context); // Example: Go back to the previous screen
          },
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter, // Centers horizontally at the top
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0), // Adjusts distance from the top
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centers content horizontally
                children: [
                  Text(
                    "Coco do Seu Gustavo",
                    style: TextStyle(
                      fontFamily: 'Roboto', // Fonte padrão do Flutter
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859), // Text color (customize as needed)
                    ),
                  ),
                  SizedBox(width: 8), // Adds space between the text and image
                  Image.asset(
                    'assets/green_check.png', // Path to your image asset
                    height: 24, // Adjust the height as needed
                    width: 24, // Adjust the width as needed
                  ),
                ],
              ),
            ),
          ),
          // Move this text slightly to the left
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10.0), // Adjust left padding here
            child: Text(
              "Basta apontar a câmera\n para o QR Code abaixo",
              style: TextStyle(
                fontFamily: 'Roboto', // Fonte padrão do Flutter
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F5FA6), // Cor personalizada para o texto
              ),
            ),
          ),
          // Move the QR code image higher
          Padding(
            padding: const EdgeInsets.only(top: 100.0), // Adjust top padding to move image higher
            child: Center(
              child: Image.asset(
                'assets/qr_code_2.png', // Path to your QR code image
                height: 200, // Adjust the height as needed
                width: 500, // Adjust the width as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
