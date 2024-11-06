import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example values for budget and expenses
    double budget = 2000000;
    double expenses = 500000;

    // Calculate the progress as a fraction of budget used
    double progress = expenses / budget;

    // Calculate the percentage of expenses as a formatted string
    String percentage =
        ((progress) * 100).toStringAsFixed(1); // Format to one decimal place

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(
                  12.0), // Optimized padding around both elements
              decoration: BoxDecoration(
                color: Colors.black87, // Black background
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red[700],
                            ),
                          ),
                          const Icon(
                            CupertinoIcons.person_fill,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            "Welcome to PeraPinoy! 👋",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            "Doniele Arys Antonio",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.settings,
                        color: Colors.orangeAccent,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 265,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.onSurface,
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                  color: Colors.white38,
                                  shape: BoxShape.circle),
                              child: const Center(
                                  child: Icon(
                                CupertinoIcons.tickets_fill,
                                size: 18,
                                color: Color.fromARGB(255, 0, 97, 176),
                              )),
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expenses",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "\₱ 500000",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                  color: Colors.white38,
                                  shape: BoxShape.circle),
                              child: const Center(
                                  child: Icon(
                                CupertinoIcons.tickets_fill,
                                size: 18,
                                color: Color.fromARGB(255, 221, 166, 1),
                              )),
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Budget",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "₱ 2000000",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                      height:
                          20), // Space between budget/expenses and progress bar
                  // Progress Percentage Display
                  Container(
                    padding:
                        EdgeInsets.all(12.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      color: Colors.black87, // Set the background color to black
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the border radius as needed
                    ), // Set the background color to black
                    child: const Text(
                      "Total Balance 💸",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "\₱ 1500000",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.yellow.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // Linear Progress Indicator
                  SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.8, // Adjust width as needed
                    child: Column(
                      children: [
                        LinearProgressIndicator(
                          value: progress.clamp(0.0,
                              1.0), // Ensure the value is between 0.0 and 1.0
                          backgroundColor: Colors.white30, // Background color
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Colors.yellowAccent), // Progress color
                          borderRadius: BorderRadius.circular(30),
                          minHeight: 15, // Height of the progress bar
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 12.0), // Add top margin here
                          child: Text(
                            "$percentage% Expensed", // Display percentage
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
