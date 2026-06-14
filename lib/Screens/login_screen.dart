import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Logo Placeholder
            Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(border: Border.all()),
              child: const Center(child: Text("Logo")),
            ),

            const SizedBox(height: 25),

            // Email Field
            TextField(
              decoration: const InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // Password Field
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // Login Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text("Login"),
            ),

            const SizedBox(height: 15),

            // Forgot Password Button
            ElevatedButton(
              onPressed: () {},
              child: const Text("Forgot Password"),
            ),

            const SizedBox(height: 15),

            const Text("Don't have an account?"),

            // Register Button
            TextButton(onPressed: () {}, child: const Text("Register")),
          ],
        ),
      ),
    );
  }
}
