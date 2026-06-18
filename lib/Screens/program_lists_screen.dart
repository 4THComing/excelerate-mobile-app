import 'package:flutter/material.dart';

import '../Models/program_model.dart';
import '../Services/program_service.dart';

class ProgramListsScreen extends StatefulWidget {
  const ProgramListsScreen({super.key});

  @override
  State<ProgramListsScreen> createState() => _ProgramListsScreenState();
}

class _ProgramListsScreenState extends State<ProgramListsScreen> {
  final ProgramService programService = ProgramService();

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

              // Dynamic Program Cards
              FutureBuilder<List<Program>>(
                future: programService.getPrograms(),

                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }

                  if (snapshot.hasError) {
                    return const Text("Unable to load programs");
                  }

                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Text("No programs available");
                  }

                  final programs = snapshot.data!;

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Row(
                      children: programs.map((program) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),

                          child: buildProgramCard(context, program),
                        );
                      }).toList(),
                    ),
                  );
                },
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

  Widget buildProgramCard(BuildContext context, Program program) {
    return SizedBox(
      width: 180,

      child: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(border: Border.all()),
            child: Center(
              child: Text(program.name, textAlign: TextAlign.center),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            height: 120,
            decoration: BoxDecoration(border: Border.all()),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8),

                child: Text(program.description, textAlign: TextAlign.center),
              ),
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
