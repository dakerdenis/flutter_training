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
    return Container(
      color: Colors.white,
      child: Column(
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
          SizedBox(
            width: double.infinity,
            height: 52,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 1,
              child: Container(
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(255, 235, 59, 1),
                        Color.fromRGBO(142, 36, 170, 1),
                      ]),
                ),
                child: FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Enter your email:',
                              style: TextStyle(
                                color: Color.fromRGBO(95, 95, 95, 1),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ////!---------Continue button------------
          SizedBox(
            width: double.infinity,
            height: 50,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 247, 0, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          ///!--------or with -- container
          SizedBox(
            width: double.infinity,
            height: 50,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 116,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Or With',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 116,
                    height: 1,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),

          ///!------FACEBOOK container
          SizedBox(
            width: double.infinity,
            height: 60,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(24, 119, 242, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        'assets/facebook.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
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
      ),
    );
  }
}
