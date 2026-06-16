import 'package:flutter/material.dart';

class ProgramListsScreen extends StatelessWidget {
  const ProgramListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Programs"), centerTitle: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text(
                  "Programs",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 25),

              // Search Box
              Container(
                width: 250,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Search :", style: TextStyle(fontSize: 20)),
              ),

              const SizedBox(height: 30),

              // Horizontal Program Cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    buildProgramCard(context),

                    const SizedBox(width: 20),

                    buildProgramCard(context),

                    const SizedBox(width: 20),

                    buildProgramCard(context),

                    const SizedBox(width: 20),

                    buildProgramCard(context),
                  ],
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
                    onPressed: () {},
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

  Widget buildProgramCard(BuildContext context) {
    return SizedBox(
      width: 150,

      child: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(border: Border.all()),
            child: const Center(child: Text("Program 1")),
          ),

          const SizedBox(height: 10),

          Container(
            height: 120,
            decoration: BoxDecoration(border: Border.all()),
            child: const Center(
              child: Text("Short\nDescription", textAlign: TextAlign.center),
            ),
          ),

          const SizedBox(height: 10),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
              child: const Text("View Details"),
            ),
          ),
        ],
      ),
    );
  }
}
