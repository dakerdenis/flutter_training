import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {





    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {



              //? ROW EBANIY
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the top
                    children: [
                      //! EBANIY TEXT V CIRCLE
                      const QuestionIdentifier(isCOrrectAnswer: null, questionIndex: null,),
                      //! SPACE BETWEEN
                      const SizedBox(
                        width: 30,
                      ),

                      //! QUESTIONS AND ANSWERS
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align children to the left
                          children: [
                            //! QUESTION
                            Text(
                              data['question'] as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 240, 209, 255),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            //!USER ANSWER
                            Text(data['user_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(174, 230, 180, 255),
                            ),),
                            //!CORRECT ANSWER
                            Text(data['correct_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(181, 165, 255, 225),
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

