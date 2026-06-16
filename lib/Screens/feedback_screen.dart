import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Feedback",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            const Text("We value your feedback."),

            const SizedBox(height: 15),

            TextField(
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Enter your feedback here...",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit Feedback"),
            ),

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
