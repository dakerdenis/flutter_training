import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final _logincontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('stalker')),
          ],
        ),Container(
          width: 200,
          height: 200,
          color: Colors.black12,
          child: Row(children: [],)
        )

        //  //! картинка
        //  AspectRatio(
        //    aspectRatio: 1.0,
        //    child: Center(
        //      child: Image.asset(
        //        height: 100,
        //        'assets/123.jpg',
        //        fit: BoxFit.contain,
        //      ),
        //    ),
        //  ),
        //  //! ввод данных
        //  TextField(
        //    controller: _logincontroller,
        //    maxLength: 40,
        //    keyboardType: TextInputType.text,
        //    decoration: const InputDecoration(
        //      label: Text('Title'),
        //    ),
        //  )
      ],
    );
  }
}
