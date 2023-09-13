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
  int currentIndex = 0;
  // Callback function to update currentIndex
  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> buildCircles() {
    List<Widget> circles = [];

    for (int i = 0; i < 4; i++) {
      circles.add(
        Container(
          width: currentIndex == i
              ? 15.0
              : 5.0, // Change size based on currentIndex
          height: 5.0,
          margin: const EdgeInsets.all(2.0),
          decoration: currentIndex == i
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  shape: BoxShape.rectangle,
                  color: currentIndex == i
                      ? const Color.fromARGB(255, 78, 78, 78)
                      : const Color.fromARGB(255, 190, 190, 190),
                )
              : BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == i
                      ? const Color.fromARGB(255, 78, 78, 78)
                      : const Color.fromARGB(255, 190, 190, 190),
                ),
        ),
      );
    }
    return circles;
  }

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
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: SliderMain(
                      onIndexChanged: updateIndex,
                    ),
                  ),
                  Positioned(
                      bottom: 20.0,
                      left: 30.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildCircles(),
                      ))
                ],
              ),
            ),
            //!------button login
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
