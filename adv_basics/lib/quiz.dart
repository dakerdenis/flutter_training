import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  @override
  Widget build(context){
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