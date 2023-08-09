import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCOrrectAnswer,
    required this.questionIndex
  });

  final int questionIndex;
  final bool isCOrrectAnswer;


  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex +1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration:  BoxDecoration(
        color: isCOrrectAnswer ? const Color.fromARGB(255, 150, 198, 241)
          : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),

       
      ),
      child: 
          Text(
            questionNumber.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
    );
  }
}
