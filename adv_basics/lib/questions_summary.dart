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
                    children: [
                      //! EBANIY TEXT V CIRCLE
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ((data['question_index'] as int) + 1).toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //! SPACE BETWEEN 
                      const SizedBox(
                        width: 30,
                      ),

                      //! QUESTIONS AND ANSWERS
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
                            children: [
                              //! QUESTION
                              Text(data['question'] as String),
                              const SizedBox(
                                height: 5,
                              ),
                              //!USER ANSWER
                              Text(data['user_answer'] as String),
                              //!CORRECT ANSWER
                              Text(data['correct_answer'] as String),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,)
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
