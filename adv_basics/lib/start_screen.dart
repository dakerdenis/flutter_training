
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 200, height: 200),
          const SizedBox(height: 40),
          const Text(
            'Hello, Flutter!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(),
            child: ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                 backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8), // Border radius for the button
                ),
              ),
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
