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
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          //! текст сверху страницы
          const Column(
            children: [
              Text(
                'Pets Universe',
              ),
              Text(
                'The easiest way to the best care! ',
              )
            ],
          ),
          //! фотка собаки в центре
          Expanded(
            child: Image.asset(
              'assets/123.jpg',
              fit: BoxFit.cover,
            ),
          ),
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
