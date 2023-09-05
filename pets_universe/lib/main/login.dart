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
        //!-------TOP BUTTON WHICH CLOSES LOGIN WIDGET
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('stalker')),
          ],
        ),
        //!------CENTER IMAGE OF LOGO AND DOG
        SizedBox(
            width: 200,
            height: 150,
            child: Center(
              child: Image.asset(
                'assets/323.png',
                width: 128,
                height: 134,
                fit: BoxFit.cover,
              ),
            )),

        ///!-------EMAIL ADRESSS
        Container(
          width: double.infinity,
          height: 52,
          child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(142, 36, 170, 1),
                      Color.fromRGBO(255, 235, 59, 1),
                    ]),
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ),
        //!----------BOTTOM CONTAINER WITH REGISTRATION LINK
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
