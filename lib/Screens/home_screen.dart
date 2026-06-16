import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Excelerate"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Welcome to Excelerate",
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Programs", textAlign: TextAlign.center),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Announcements", textAlign: TextAlign.center),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Quick Links", textAlign: TextAlign.center),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Home")),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/programs');
                  },
                  child: const Text("Programs"),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: const Text("Profile"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
