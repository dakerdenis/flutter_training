import 'package:flutter/material.dart';
import 'package:pets_universe/main/buttons/mybutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets_universe/main/slider/sliderMain.dart';

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
        padding: const EdgeInsets.only(top: 40, bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //!-----TEXT NAME
            SizedBox(
              child: Column(
                children: [
                  Text(
                    'Pets Universe',
                    style: GoogleFonts.brawler(

                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                   Text(
                    'The easiest way to the  best care !',
                    style: GoogleFonts.brawler(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(
              child: SliderMain(),
            ),
            //!------button login
            const SizedBox(
              height: 30,
            ),

          ],
        ),
      ),
    );
  }

}
