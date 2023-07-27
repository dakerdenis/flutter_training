import 'package:flutter/material.dart';
import 'package:udemy_app/main_container/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: GradientContainer(Colors.amber, Colors.white30),
      ),
    ),
  );
}

