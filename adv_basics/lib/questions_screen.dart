import 'package:adv_basics/buttons/answer_button.dart';
import 'package:flutter/material.dart';

import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer,});

  final void Function(String answer) onSelectedAnswer;


  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectedAnswer(selectedAnswers);

    setState(() {
      currentQuestionIndex++;
    });    
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style:  GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffeldAnswers().map((answer){
              return  AnswerButton(
              answerText: answer,
              onTap: (){
                answerQuestion(answer);
              },
            );
            
            }),
          ],
        ),
      ),
    );
  }
}
