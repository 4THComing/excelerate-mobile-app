import 'package:flutter/material.dart';

import 'Screens/login_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/program_lists_screen.dart';
import 'Screens/program_details_screen.dart';
import 'Screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Excelerate',

      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(centerTitle: true),
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/programs': (context) => const ProgramListsScreen(),
        '/details': (context) => const ProgramDetailsScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
