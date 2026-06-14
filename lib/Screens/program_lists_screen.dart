import 'package:flutter/material.dart';

class ProgramListingScreen extends StatelessWidget {
  const ProgramListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Programs"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Digital Marketing Bootcamp",
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Web Development Program",
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                "Data Analytics Program",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
