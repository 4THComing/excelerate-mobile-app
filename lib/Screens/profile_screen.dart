import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Profile",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            // Avatar
            Container(
              width: 150,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text("Avatar", style: TextStyle(fontSize: 20)),
              ),
            ),

            const SizedBox(height: 20),

            // Name
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Name : User", style: TextStyle(fontSize: 18)),
            ),

            const SizedBox(height: 10),

            // Email
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Email : demo@excelerate.com",
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            // My Programs
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("My Programs"),
              ),
            ),

            const SizedBox(height: 10),

            // Settings
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Settings"),
              ),
            ),

            const SizedBox(height: 10),

            // Logout
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text("Logout"),
              ),
            ),

            const Spacer(),

            // Bottom Navigation
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text("Home"),
                ),

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
