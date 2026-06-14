import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Welcome Announcement",
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Programs", textAlign: TextAlign.center),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Announcements", textAlign: TextAlign.center),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Quick Links", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
