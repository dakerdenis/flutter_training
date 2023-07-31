import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 74, 4, 114),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 74, 4, 114),
                Color.fromARGB(255, 152, 128, 165)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
          child: const StartScreen()),
      ),
    );
  }
}
