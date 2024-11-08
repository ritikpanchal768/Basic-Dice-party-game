// Importing necessary Dart and Flutter packages.
import 'dart:math';
import 'package:flutter/material.dart';

/// A stateful widget that simulates a dice roll. 
/// `DiceRoller` displays a dice image and a button to "roll" the dice,
/// generating a random dice face each time the button is pressed.
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

/// The private state class for `DiceRoller`.
/// Handles the dice rolling logic and UI updates when the dice is "rolled".
class _DiceRollerState extends State<DiceRoller> {
  // Instance of Dart's `Random` class to generate random numbers.
  Random random = Random();

  // Variable to hold the current dice face image path.
  var activeDice = 'assets/dice_image/dice_1.png';

  /// Method to "roll" the dice, selecting a random number between 1 and 6.
  /// Updates the `activeDice` image path with a new dice face image,
  /// and triggers a rebuild to reflect the change.
  void rollDice() {
    setState(() {
      // Generate a random number from 1 to 6 for dice face selection.
      activeDice = 'assets/dice_image/dice_${random.nextInt(6) + 1}.png';
    });

    // Prints a message to the console each time the dice is rolled.
    print('Changing dice image...');
  }

  /// Builds the `DiceRoller` widget layout, displaying the current dice image
  /// and a "Roll Dice" button.
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Displays the current dice face image.
        Image.asset(
          activeDice, // Path to the dice face image.
          width: 200, // Sets the width of the image.
        ),
        const SizedBox(
          height: 10, // Adds space between the dice image and button.
        ),
        // A button that rolls the dice when pressed.
        TextButton(
          onPressed: rollDice, // Calls `rollDice()` on button press.
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20, // Adds padding to the top of the button.
            ),
            foregroundColor: Colors.black, // Sets text color to black.
            textStyle: const TextStyle(
              fontSize: 28, // Sets font size for the button text.
            ),
          ),
          child: const Text('Roll Dice'), // Text displayed on the button.
        ),
      ],
    );
  }
}
