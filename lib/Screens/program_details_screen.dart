import 'package:flutter/material.dart';
import '../Models/program_model.dart';

class ProgramDetailsScreen extends StatelessWidget {
  const ProgramDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Program program =
        ModalRoute.of(context)!.settings.arguments as Program;

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
                child: Text(
                  program.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Program Image Placeholder
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
                child: Text(program.description, textAlign: TextAlign.center),
              ),

              const SizedBox(height: 20),

              // Date
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                  "Date : ${program.date}",
                  style: const TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 15),

              // Location
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                  "Location : ${program.location}",
                  style: const TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 30),

              // Register Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
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
