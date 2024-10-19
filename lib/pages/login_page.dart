import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/my_textfeild.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Welcome to Energy Tracker",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),

            // Email Textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false, // Corrected spelling here
            ),
            const SizedBox(height: 10),

            // Password Textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true, // Corrected spelling here
            ),
          ],
        ),
      ),
    );
  }
}
