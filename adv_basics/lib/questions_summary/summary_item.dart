import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.itemData, {
    super.key,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Align children to the top
      children: [
        //! EBANIY TEXT V CIRCLE
        QuestionIdentifier(
          isCOrrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        //! SPACE BETWEEN
        const SizedBox(
          width: 30,
        ),

        //! QUESTIONS AND ANSWERS
        Expanded(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the left
            children: [
              //! QUESTION
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 240, 209, 255),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              //!USER ANSWER
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(174, 230, 180, 255),
                ),
              ),
              //!CORRECT ANSWER
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(181, 165, 255, 225),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
