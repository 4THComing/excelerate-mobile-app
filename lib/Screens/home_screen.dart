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
          children: [
            // Logo + Profile
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Center(child: Text("Logo")),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: const Text("Profile"),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Announcements Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Announcements",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(height: 15),

            // Announcement 1
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Workshop This Friday"),
            ),

            const SizedBox(height: 10),

            // Announcement 2
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("New Program Available"),
            ),

            const SizedBox(height: 25),

            // Featured Programs Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Featured Programs",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(height: 15),

            // Program Card 1
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },

              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Program Card"),
              ),
            ),

            const SizedBox(height: 10),

            // Program Card 2
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },

              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Program Card"),
              ),
            ),

            const Spacer(),

            // Bottom Navigation
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
                    Navigator.pushNamed(context, '/feedback');
                  },
                  child: const Text("Feedback"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
