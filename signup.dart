import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      // Successful signup, navigate to Home Screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Create an Account", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              
              TextFormField(
                decoration: const InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email)),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                onChanged: (value) => _email = value,
              ),
              const SizedBox(height: 10),

              TextFormField(
                decoration: const InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.lock)),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
                onChanged: (value) => _password = value,
              ),
              const SizedBox(height: 10),

              TextFormField(
                decoration: const InputDecoration(labelText: "Confirm Password", prefixIcon: Icon(Icons.lock_outline)),
                obscureText: true,
                validator: (value) {
                  if (value != _password) {
                    return "Passwords do not match";
                  }
                  return null;
                },
                onChanged: (value) => _confirmPassword = value,
              ),
              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _signUp,
                  child: const Text("Sign Up", style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
