import 'package:flutter/material.dart';
import 'package:udemy_app/main_container/styled_text.dart';

const startAlignmen = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const colorAmber = Colors.amber;
const colorWhite30 = Colors.white30;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:  [
            colorAmber,
            colorWhite30,
          ],
          begin: startAlignmen,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Stalker'),
      ),
    );
  }
}


