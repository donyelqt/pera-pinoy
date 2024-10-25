import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,  // Set background color to white
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_alt),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.graph_square_fill),
            label: 'Stats'
          ),
        ]
      ),
    );
  }
}