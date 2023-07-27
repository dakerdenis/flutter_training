import 'package:flutter/material.dart';
import 'package:udemy_app/main_container/dice_roller.dart';
import 'package:udemy_app/main_container/styled_text.dart';

const startAlignmen = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

const GradientContainer.purple({super.key})
  : color1 = Colors.amber,
    color2 = Colors.white30;
    
  final Color color1;
  final Color color2;


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
      // ignore: prefer_const_constructors
      child: Center(
          child: const DiceRoller(),
          // child: StyledText('Stalker'),

          ),
    );
  }
}
