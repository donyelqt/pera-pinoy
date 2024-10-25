import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(100)), // Border radius
        child: BottomNavigationBar(
          backgroundColor: Colors.white, // Set background color to white
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_alt), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.graph_square_fill), label: 'Stats'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_grid_2x2_fill), label: 'Others'),
          ],
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
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
            ),
          ),
          child: const Icon(
            CupertinoIcons.add,
          ),
        ),
      ),
    );
  }
}

