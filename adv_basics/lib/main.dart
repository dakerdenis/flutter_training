import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 74, 20, 161),
      body: Column(
        // ignore: unnecessary_const
        children: [const Text('data'), Image.asset('assets/images/quiz-logo.png')],
      )
    ),
  ));
}
