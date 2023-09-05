import 'package:flutter/material.dart';
import 'package:pets_universe/main/buttons/mybutton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //! текст сверху страницы
          const Column(
            children: [
              Text(
                'Pets Universe',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                'The easiest way to the best care! ',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          //! фотка собаки в центре
          Expanded(
              child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.8,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/123.jpg',
              fit: BoxFit.cover,
            ),
          )),
          //! кнопка внизу страницы - которая ведёт на страницу входа.
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(),
            ],
          )
        ],
      ),
    ));
  }
}
