import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/login/presentation/login_screen.dart';

class SignUpSuccessPage extends StatelessWidget {
  static String route() => '/sign_up/success';

  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 100),
              SizedBox(height: 20),
              Text(
                "Sign-Up Successful!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Your account has been created successfully. You can now log in and start using the app!",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Button to go back to login screen
              ElevatedButton(
                onPressed: () {
                  context.go(LoginScreen.route());
                },
                child: Text("Go to Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
