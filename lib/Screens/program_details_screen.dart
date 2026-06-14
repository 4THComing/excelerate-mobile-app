import 'package:flutter/material.dart';

class ProgramDetailsScreen extends StatelessWidget {
  const ProgramDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Program Details"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Digital Marketing Bootcamp",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all()),
              child: const Center(child: Text("Program Image")),
            ),

            const SizedBox(height: 20),

            const Text("Start Date: 1 July 2026"),

            const SizedBox(height: 10),

            const Text("Duration: 8 Weeks"),

            const SizedBox(height: 10),

            const Text(
              "Learn digital marketing skills including social media, SEO, and online advertising.",
            ),

            const SizedBox(height: 30),

            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
