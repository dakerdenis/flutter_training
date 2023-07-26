import 'package:flutter/material.dart';

class ChangedText extends StatelessWidget {
  const ChangedText({
    super.key,
  });

  @override
  Widget build(context) {
    return const Text(
      'Hello World !',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        wordSpacing: 2.0,
      ),
    );
  }
}