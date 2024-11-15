import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pera_pinoy/screens/home/views/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(60)),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.redAccent, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.5),
                blurRadius: 20,
                spreadRadius: 5,
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor:
                Colors.transparent, // Transparent so gradient shows
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            type: BottomNavigationBarType.fixed,
            iconSize: 20.0,
            selectedLabelStyle: const TextStyle(
              fontSize: 12.0, // Customize the text size for the selected label
              fontWeight:
                  FontWeight.bold, // You can also customize other properties
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize:
                  12.0, // Customize the text size for the unselected label
              fontWeight: FontWeight.normal,
            ), // Correct placement
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.square_grid_2x2_fill), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.graph_square_fill),
                  label: 'Trends'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bolt_circle_fill), label: 'GPT'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.waveform_path), label: 'Forecast'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.question),
                  label: 'Others'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                const Color.fromARGB(255, 255, 132, 0),
                const Color.fromARGB(255, 231, 0, 0),
                const Color.fromARGB(255, 231, 204, 0),
              ],
              transform: const GradientRotation(pi / 4),
            ),
          ),
          child: const Icon(
            CupertinoIcons.add_circled_solid,
            color: Colors.white
          ),
        ),
      ),
      body: const MainScreen(),
    );
  }
}
