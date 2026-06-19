import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _formKey = GlobalKey<FormState>();

  String? selectedProgram;
  int selectedRating = 0;

  final TextEditingController commentsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback"), centerTitle: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Form(
            key: _formKey,

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

                // Program
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: "Program",
                    border: OutlineInputBorder(),
                  ),

                  value: selectedProgram,

                  items: const [
                    DropdownMenuItem(
                      value: "Digital Marketing Bootcamp",
                      child: Text("Digital Marketing Bootcamp"),
                    ),
                    DropdownMenuItem(
                      value: "Web Development Program",
                      child: Text("Web Development Program"),
                    ),
                    DropdownMenuItem(
                      value: "Data Analytics Program",
                      child: Text("Data Analytics Program"),
                    ),
                  ],

                  onChanged: (value) {
                    setState(() {
                      selectedProgram = value;
                    });
                  },

                  validator: (value) {
                    if (value == null) {
                      return "Please select a program";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                // Rating
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: List.generate(5, (index) {
                    return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedRating = index + 1;
                        });
                      },

                      child: Text("${index + 1}"),
                    );
                  }),
                ),

                const SizedBox(height: 15),

                Text("Selected Rating: $selectedRating"),

                const SizedBox(height: 25),

                // Comments
                TextFormField(
                  controller: commentsController,
                  maxLines: 6,

                  decoration: const InputDecoration(
                    labelText: "Comments",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Please enter feedback";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                // Submit Button
                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (selectedRating == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please select a rating"),
                            ),
                          );
                          return;
                        }

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Thank you, your feedback was submitted!",
                            ),
                          ),
                        );

                        setState(() {
                          selectedProgram = null;
                          selectedRating = 0;
                        });

                        commentsController.clear();
                      }
                    },
                    child: const Text("Submit Feedback"),
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
      ),
    );
  }
}
