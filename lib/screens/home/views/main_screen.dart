import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.redAccent),
                ),
                SizedBox(width: 8,),
                Column(
                  children: [
                    Text(
                      "Welcome to PeraPinoy!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800
                      ),
                    ), 
                    Text(
                      "Doniele Arys Antonio"
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
