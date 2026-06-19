import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController commentsController = TextEditingController();

  String selectedProgram = "Digital Marketing Bootcamp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Program Registration"),
        centerTitle: true,
      ),

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
                    "Program Registration",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 20),

                // First Name
                TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter first name";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Last Name
                TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter last name";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Email
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Program Dropdown
                DropdownButtonFormField<String>(
                  value: selectedProgram,
                  decoration: const InputDecoration(
                    labelText: "Select Program",
                    border: OutlineInputBorder(),
                  ),
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
                      selectedProgram = value!;
                    });
                  },
                ),

                const SizedBox(height: 20),

                // Comments
                TextFormField(
                  controller: commentsController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: "Comments",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 25),

                // Submit Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Registration Submitted Successfully!",
                            ),
                          ),
                        );

                        firstNameController.clear();
                        lastNameController.clear();
                        emailController.clear();
                        commentsController.clear();
                      }
                    },
                    child: const Text("Submit"),
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
      ),
    );
  }
}
