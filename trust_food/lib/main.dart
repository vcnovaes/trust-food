import 'package:flutter/material.dart';
import 'package:trust_food/screens/home/buyerHome.dart';
import 'package:trust_food/screens/home/sellerHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
          headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Color(0xFF6200EE)),
          headlineMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xFF03DAC6)),
          headlineSmall: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  // Simulated login logic (replace with actual Firebase authentication)
  void _login() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      // Here you would typically check the user credentials from Firebase
      String userType = "buyer"; // Example user type (replace with actual check)
      
      // Navigate based on user type
      if (_email == "seller@email.com") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SellerHomePage()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BuyerHomePage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email field
              Image.asset(
                'assets/image.png', // Add your image in the assets folder
                height: 100.0, // Adjust the height as needed
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value ?? '';
                },
              ),
              SizedBox(height: 16),

              // Password field
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value ?? '';
                },
              ),
              SizedBox(height: 24),

              // Login button
              ElevatedButton(
                onPressed: _login,
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}