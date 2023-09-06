import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

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
  void _loginContainer(){
       Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>const Home()));
  }

  void _onContainerTapped() {
    // Define the function to execute when the container is tapped
    Navigator.pop(context);
    // You can add your custom logic here
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //!-------TOP BUTTON WHICH CLOSES LOGIN WIDGET
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: _onContainerTapped,
                child: Container(
                  width: 40.0, // Set the desired width
                  height: 40.0, // Set the desired height
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Circular shape
                    color: Color.fromARGB(
                        255, 0, 0, 0), // Background color of the circle
                  ),
                  child: Center(
                    child: Image.asset(
                        'assets/Arrow.png'), // Replace with your image path
                  ),
                ),
              ),
            ],
          ),
          //!------CENTER IMAGE OF LOGO AND DOG
          SizedBox(
              width: 200,
              height: 150,
              child: Center(
                child: SvgPicture.asset(
                  'assets/323.svg',
                  width: 128,
                  height: 134,

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
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Enter your email:',
                              style: GoogleFonts.brawler(
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
           child: GestureDetector(
            onTap: _loginContainer,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 247, 0, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: GoogleFonts.brawler(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
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
                    width: 120,
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                   Text(
                    'Or With',
                    style: GoogleFonts.brawler(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 120,
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
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image.asset(
                        'assets/facebook.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                     Center(
                      child: Text(
                        'Login with Facebook',
                        style: GoogleFonts.brawler(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          ///!------GOOGLE container
          SizedBox(
            width: double.infinity,
            height: 60,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image.asset(
                        'assets/Google.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                     Center(
                      child: Text(
                        'Login with Google',
                        style: GoogleFonts.brawler(
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          fontSize: 18,
                        ),
                      ),
                    ),
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
                    style:  GoogleFonts.brawler(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Create one!',
                        style:  GoogleFonts.brawler(
                          color: Color.fromRGBO(206, 145, 205, 1),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = _handleLinkTap,
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}


