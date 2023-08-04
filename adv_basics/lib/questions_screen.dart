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
    return  SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'Pizda 1', onTap: (){},),
          const SizedBox(height: 15),
          AnswerButton(answerText: 'Pizda 2', onTap: (){},),
          const SizedBox(height: 15),
          AnswerButton(answerText: 'Pizda 3', onTap: (){},),
          const SizedBox(height: 15),
          AnswerButton(answerText: 'Pizda 4', onTap: (){},),
        ],
      ),
    );
  }
}

