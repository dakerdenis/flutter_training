import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {


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
        ),
        Container(
          width: double.infinity,
          height: 50.0,
          
          decoration:  BoxDecoration(
            color: Colors.blue[200],
            borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
          ),
          child: const Center(
            child: Text(
              'Don’t have an account? Create one.',
            ),
          )
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
