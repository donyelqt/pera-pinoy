import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
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
            type: BottomNavigationBarType.fixed, // Correct placement
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.house_alt_fill), 
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.graph_square_fill),
                  label: 'Trends'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bolt_circle_fill),
                  label: 'PeraPinoyGPT'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.graph_square_fill),
                  label: 'Trends'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.square_grid_2x2_fill),
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
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
              transform: const GradientRotation(pi / 4),
            ),
          ),
          child: const Icon(
            CupertinoIcons.add_circled_solid,
          ),
        ),
      ),
    );
  }
}
