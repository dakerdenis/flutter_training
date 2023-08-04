import 'package:adv_basics/buttons/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          AnswerButton(),
          SizedBox(height: 15),
          AnswerButton(),
          SizedBox(height: 15),
          AnswerButton(),
          SizedBox(height: 15),
          AnswerButton(),
        ],
      ),
    );
  }
}

