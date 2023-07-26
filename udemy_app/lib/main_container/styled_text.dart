import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key
  });

  final String text;

  @override
  Widget build(context) {
    return  Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        wordSpacing: 2.0,
      ),
    );
  }
}
