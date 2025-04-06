import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';
import 'package:trust_food/src/login/domain/usecase/login_usecase.dart';
import 'package:trust_food/src/login/login_provider.dart';
import 'package:trust_food/src/shared/design/assets/trust_food_images.dart';
import 'package:trust_food/src/signup/presentation/common_sign_up.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static String route() => '/login';

  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';

  @override
  Widget build(BuildContext context) {
    final usecase = ref.watch(loginUsecaseProvider);

    void login() {
      if (_formKey.currentState?.validate() ?? false) {
        _formKey.currentState?.save();
        // Here you would typically check the user credentials from Firebase

        usecase.add(LoginEvent.login(email: _email));
      }
    }

    return BlocListener<LoginUsecase, LoginState>(
      bloc: usecase,
      listener: listener,
      listenWhen: (previous, current) {
        return current.loginRequestStatus != previous.loginRequestStatus;
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Email field
                Image.asset(TrustFoodImages.logo, height: 100.0),
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
                  onSaved: (value) {},
                ),
                SizedBox(height: 24),

                // Login button
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Spaces buttons evenly
                  children: [
                    ElevatedButton(
                      onPressed: () => login(),
                      child: Text("Login"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.go(SignUpCommon.route());
                      },
                      child: Text("Sign Up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  listener(BuildContext context, LoginState state) {
    state.loginRequestStatus.maybeMap(
      orElse: () {
        if (_email == "seller@email.com") {
          context.go(BuyerHomePage.route());
        } else {
          context.go(BuyerHomePage.route());
        }
      },
    );
  }
}
