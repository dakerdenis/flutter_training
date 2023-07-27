import 'package:flutter/material.dart';
import 'package:udemy_app/main_container/styled_text.dart';

const startAlignmen = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void rollDice(){

  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignmen,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-1.png',
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              textStyle: const TextStyle(
                fontSize: 28
              )
            ),
            child: const Text('Roll Dice'),

          ),
        ],
      )
          // child: StyledText('Stalker'),

          ),
    );
  }
}
