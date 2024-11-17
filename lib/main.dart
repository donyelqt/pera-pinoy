import 'package:flutter/material.dart';
import 'package:pera_pinoy/screens/home/views/home_screen.dart';
import 'package:pera_pinoy/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/login', // Ensure this is set to '/login'
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
