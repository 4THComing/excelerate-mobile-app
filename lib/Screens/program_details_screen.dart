import 'package:flutter/material.dart';

class ProgramDetailsScreen extends StatelessWidget {
  const ProgramDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Program Details"), centerTitle: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              // Program Name
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text(
                  "Digital Marketing Bootcamp",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 25),

              // Program Image
              Container(
                height: 120,
                width: 250,
                decoration: BoxDecoration(border: Border.all()),
                child: const Center(child: Text("Program Image")),
              ),

              const SizedBox(height: 25),

              // Description
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text(
                  "Learn digital marketing skills including SEO, social media marketing, content creation, and online advertising.",
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 20),

              // Date
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text(
                  "Date : 01-07-2026",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 15),

              // Location
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text(
                  "Location : Online",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 30),

              // Register Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Register"),
                ),
              ),

              const SizedBox(height: 30),

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
      ),
    );
  }
}
