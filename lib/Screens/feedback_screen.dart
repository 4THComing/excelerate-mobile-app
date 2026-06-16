import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback"), centerTitle: true),

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
                  "Feedback",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 25),

              // Program Label
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Program", style: TextStyle(fontSize: 18)),
              ),

              const SizedBox(height: 15),

              // Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                hint: const Text("Select Program"),
                items: const [
                  DropdownMenuItem(
                    value: "Program 1",
                    child: Text("Program 1"),
                  ),
                  DropdownMenuItem(
                    value: "Program 2",
                    child: Text("Program 2"),
                  ),
                  DropdownMenuItem(
                    value: "Program 3",
                    child: Text("Program 3"),
                  ),
                ],
                onChanged: (value) {},
              ),

              const SizedBox(height: 20),

              // Rating Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text(
                  "Rating",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 15),

              // Rating Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(child: Text("1")),
                  CircleAvatar(child: Text("2")),
                  CircleAvatar(child: Text("3")),
                  CircleAvatar(child: Text("4")),
                  CircleAvatar(child: Text("5")),
                ],
              ),

              const SizedBox(height: 20),

              // Comments Box
              TextField(
                maxLines: 6,
                decoration: const InputDecoration(
                  hintText: "Comments",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              // Navigation
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
                    onPressed: () {},
                    child: const Text("Feedback"),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
