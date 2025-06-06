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
                // border: Border.all(color: Colors.grey.shade400),
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
                              color: Colors.lightBlueAccent,
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
            const SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 275,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 0, 0), //Color.fromARGB(255, 195, 29, 17),
                      Colors.black,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey.shade300,
                        offset: const Offset(5, 5))
                  ]),
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
                                  "₱ 500000",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                        // Vertical Divider
                        Container(
                          width: 2, // Thickness of the vertical line
                          height: 50, // Adjust the height to your preference
                          color:
                              Colors.white, // Set color for the divider line
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16), // Optional spacing
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
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.white, // Set the color of the line
                    thickness: 4, // Set the thickness of the line
                    // indent: 20, // Optional: set the start padding
                    // endIndent: 20, // Optional: set the end padding
                  ),
                  const SizedBox(
                      height:
                          10), // Space between budget/expenses and progress bar
                  // Progress Percentage Display
                  Container(
                    padding: const EdgeInsets.all(
                        12.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      color:
                          Colors.black87, // Set the background color to black
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the border radius as needed
                    ), // Set the background color to black
                    child: Text(
                      "Total Balance 💸",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors
                              .red[700], // Color.fromARGB(255, 216, 195, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "₱ 1500000",
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
                          backgroundColor: Colors.white70, // Background color
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
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.red[700],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Expense History",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Leaderboards",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Others",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, int i) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '₱ 50000',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.yellow.shade800,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Text(
                                        'Nov 11, 2024',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Laptop',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                        color: Colors.redAccent,
                                        shape: BoxShape.circle),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
