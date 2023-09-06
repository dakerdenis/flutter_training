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
      body: Container(

        padding: const EdgeInsets.only(top: 40, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //!-----TEXT NAME
            const SizedBox(
              child: Column(
                children: [
                  Text(
                    'Pets Universe',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'The easiest way to the  best care !',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      top: 20.0,
                      left: 20.0,
                      child: Transform.rotate(
                        angle: 45 * 3.1415927 / 180,
                        child: Image.asset(
                          'assets/pu_landing.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      left: 20.0,
                      child: Transform.rotate(
                        angle: -90 * 3.1415927 / 180,
                        child: Image.asset(
                          'assets/pu_landing2.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.4,
                      right: 20.0,
                      child: Transform.rotate(
                        angle: 90 * 3.1415927 / 180,
                        child: Image.asset(
                          'assets/pu_landing2.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 30.0,
                      child: Transform.rotate(
                          angle: 0 * 3.1415927 / 180,
                          child: Transform.scale(
                            scale: 1.1,
                            child: Image.asset(
                              'assets/cat1.png',
                            ),
                          )),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.27,
                      right:  MediaQuery.of(context).size.height * 0.065,
                      child: Transform.rotate(
                          angle: 0 * 3.1415927 / 180,
                          child: Transform.scale(
                            scale: 1,
                            child: Image.asset(
                              'assets/cloud.png',
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            //!------button login
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
