import 'package:adv_basics/data/questions.dart';

import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chooseAnswer,
  });

  final List<String> chooseAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    //instead of map method where() will not change any lists




    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Your answered $numCorrectQuestions out of $numTotalQuestions questions correctly !',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 247, 191, 252),
                  ),
                ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Text('Restart quiz'),
                  Icon( Icons.replay, ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
