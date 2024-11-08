// Importing necessary Flutter packages
import 'package:flutter/material.dart';
import 'package:house_hood_app/gradient_container.dart';

/// The main entry point of the application.
/// This function calls the `runApp()` method, which inflates the given widget
/// and attaches it to the screen.
void main() {
  runApp(
    MaterialApp(
      // The `MaterialApp` widget is the root of the application and provides
      // essential services such as navigation, themes, and more.
      home: Scaffold(
        // `Scaffold` provides a base structure for the visual interface,
        // supporting standard Material Design layout elements.
        
        backgroundColor: Colors.blueGrey, // Sets the background color for the entire screen.

        // `body` defines the main content of the Scaffold.
        // Here, it is set to the `GradientContainer` widget.
        body: GradientContainer(),
      ),
    ),
  );
}
