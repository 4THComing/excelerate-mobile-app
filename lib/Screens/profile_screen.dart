import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Profile",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            const Text("Name: Demo User"),

            const SizedBox(height: 10),

            const Text("Email: demo@excelerate.com"),

            const SizedBox(height: 30),

            ElevatedButton(onPressed: () {}, child: const Text("Edit Profile")),

            const Spacer(),

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

                ElevatedButton(onPressed: () {}, child: const Text("Profile")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
