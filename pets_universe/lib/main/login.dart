import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  void _handleLinkTap() {
    //Handle the Link tap action
    print('Link Tapped !');

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ElevatedButton(onPressed: () {Navigator.of(context).pop();}, child: const Text('stalker')),
          ],
        ),
        Container(
            width: 200,
            height: 200,
            color: Colors.black12,
            child:const Row(
              children: [],
            )),
        Container(
          width: double.infinity,
          height: 60.0,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(206, 145, 205, 0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Center(
            child: RichText(
              text: TextSpan(
                  text: 'Don’t have an account? ',
                  style: const TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Create one!',
                      style: const TextStyle(
                        color: Color.fromRGBO(206, 145, 205, 1),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = _handleLinkTap,
                    )
                  ]),
            ),
          ),
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
