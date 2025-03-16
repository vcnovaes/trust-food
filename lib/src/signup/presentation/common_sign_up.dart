import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/signup/presentation/success_sign_up_page.dart';

class SignUpCommon extends ConsumerStatefulWidget {
  static String route() => '/sign_up/form';

  const SignUpCommon({super.key});

  @override
  SignUpCommonState createState() => SignUpCommonState();
}

class SignUpCommonState extends ConsumerState<SignUpCommon> {
  final _formKey = GlobalKey<FormState>();

  String _userType = 'Buyer';

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();

      context.go(SignUpSuccessPage.route());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Email Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) => {},
              ),
              SizedBox(height: 12),

              // Phone Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) => {},
              ),
              SizedBox(height: 12),

              // First Name Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
                onSaved: (value) => {},
              ),
              SizedBox(height: 12),

              // Last Name Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
                onSaved: (value) => {},
              ),
              SizedBox(height: 12),

              // User Type Dropdown
              DropdownButtonFormField<String>(
                value: _userType,
                decoration: InputDecoration(
                  labelText: 'Are you a Seller or Buyer?',
                  border: OutlineInputBorder(),
                ),
                items:
                    ['Buyer', 'Seller'].map((String type) {
                      return DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    _userType = value!;
                  });
                },
                onSaved: (value) => _userType = value!,
              ),
              SizedBox(height: 20),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
