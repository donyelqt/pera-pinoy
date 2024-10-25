import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PeraPinoy",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
          primary: const Color.fromARGB(255, 231, 158, 0),
          secondary: const Color.fromARGB(255, 231, 0, 0),
          tertiary: const Color.fromARGB(255, 231, 204, 0)
        )
      ),
    );
  }
}