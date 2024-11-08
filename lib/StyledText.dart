// Importing Flutter Material package to access essential UI components.
import 'package:flutter/material.dart';

/// A stateless widget that displays styled text with a specific color and font size.
/// `Styledtext` allows easy customization of text style to maintain consistent
/// styling across the app.
///
/// Takes a [text] parameter, which defines the content of the text displayed.
class Styledtext extends StatelessWidget {
  /// Constructor for `Styledtext`, requiring a [text] parameter,
  /// which will be displayed in the widget.
  /// `super.key` is passed to manage widget uniqueness.
  const Styledtext(this.text, {super.key});

  /// The text content to be displayed, passed as a positional parameter.
  final String text;

  /// Builds the widget by returning a `Text` widget with the specified style.
  @override
  Widget build(BuildContext context) {
    return Text(
      // The content of the text displayed in this widget.
      text,
      // The style applied to the text, defining color and font size.
      style: const TextStyle(
        color: Color.fromARGB(255, 71, 12, 12), // Dark red text color.
        fontSize: 28, // Font size of the text.
      ),
    );
  }
}
