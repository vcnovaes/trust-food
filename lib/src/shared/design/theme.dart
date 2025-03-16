import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier()
    : super(
        ThemeData(
          // Apply a custom color scheme using ColorScheme
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 65, 78, 255), // Main color
            onPrimary: Colors.white, // Text color for primary
            secondary: Color(0xFF03DAC6), // Secondary color
            onSecondary: Colors.black, // Text color for secondary
            surface: Colors.white, // Surface color (e.g., background of cards)
            onSurface: Colors.black, // Text color on background
            error: Colors.red, // Error color
            onError: Colors.white, // Text color on error
          ),
          // Define other parts of the theme using the color scheme
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF6200EE), // Use primary color for app bar
            foregroundColor: Colors.white, // Text color in app bar
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Color(0xFF6200EE), // Button color
            textTheme: ButtonTextTheme.primary, // Button text color
          ),
          textTheme: TextTheme(
            headlineLarge: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6200EE),
            ),
            headlineMedium: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF03DAC6),
            ),
            headlineSmall: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ),
      ); // Tema padrão
}
