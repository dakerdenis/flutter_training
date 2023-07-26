import 'package:flutter/material.dart';
import 'package:udemy_app/main_container/styled_text.dart';

var startAlignmen = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
var colorAmber = Colors.amber;
var colorWhite30 = Colors.white30;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
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
        child: ChangedText(),
      ),
    );
  }
}


