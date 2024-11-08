// Importing necessary Flutter packages.
import 'package:flutter/material.dart';
import 'package:house_hood_app/dice_roller.dart';

/// A stateless widget that displays a container with a gradient background.
/// The container centers the `DiceRoller` widget in its child.
///
/// `GradientContainer` is used to provide a visually appealing background
/// gradient that spans from a red color at the top to a blue color at the bottom.
class GradientContainer extends StatelessWidget {
  // Constructor for `GradientContainer`, with a `super.key` parameter
  // for widget key handling, which helps manage widget uniqueness.
  GradientContainer({super.key});

  /// Builds the `GradientContainer` widget, which consists of a full-screen
  /// `Container` widget with a gradient background. The gradient color transitions
  /// from a light red to a soft blue.
  @override
  Widget build(BuildContext context) {
    return Container(
      // Defines the container's appearance and layout properties.
      decoration: const BoxDecoration(
        // `BoxDecoration` enables the use of a linear gradient for the background.
        gradient: LinearGradient(
          colors: [
            // The start color of the gradient (a soft red).
            Color.fromARGB(255, 238, 118, 118),
            // The end color of the gradient (a soft blue).
            Color.fromARGB(255, 108, 156, 239),
          ],
          // Uncomment the `begin` alignment if a specific gradient direction is required.
          // begin: Alignment.bottomRight,
        ),
      ),
      // Centers the `DiceRoller` widget within the container.
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
