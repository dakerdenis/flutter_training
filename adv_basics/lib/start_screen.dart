import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz , {
    super.key,
  });

  final  void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            height: 200,
            color: const  Color.fromARGB(146, 255, 255, 255),
          ),
          const SizedBox(height: 40),
           Text(
            'Hello, Flutter!',
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(),
            child: OutlinedButton.icon(
              onPressed:startQuiz,
            
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Border radius for the button
                ),
              ),
              label:  Text(
                'Start Quiz',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
            ),
          )
        ],
      ),
    );
  }
}
