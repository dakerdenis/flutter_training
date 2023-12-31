import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../buttons/mybutton.dart';

class SliderMain extends StatefulWidget {
  const SliderMain({super.key, required this.onIndexChanged});
  final Function(int) onIndexChanged;


  @override
  State<StatefulWidget> createState() {
    return _SliderMainState();
  }
}

class _SliderMainState extends State<SliderMain> {
  int currentIndex = 0;


  void openLogin(){
      
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        sliderNumberOne(context),
        sliderNumberTwo(context),
        sliderNumberThree(context),
        sliderNumberFour(context),
      ],
      options: CarouselOptions(
        height: double.maxFinite,
        // ...other options...
        enableInfiniteScroll: false, // Enable infinite scrolling (optional)
        autoPlay: false, // Auto play the carousel (optional)
        onPageChanged: (index, reason) {
          // Callback when the page is changed
          setState(() {
            currentIndex = index;
          });
          widget.onIndexChanged(currentIndex);
        },
        // Pagination settings
        enlargeCenterPage: false, // Make the current item larger (optional)
        aspectRatio: 16 / 9, // Aspect ratio of each item (optional)
        viewportFraction:
            1, // Fraction of the viewport width each item should occupy (optional)
        // Pagination dot settings
        scrollDirection:
            Axis.horizontal, // Scroll direction (horizontal or vertical)
        autoPlayInterval: const Duration(seconds: 3), // Auto play interval (optional)
        autoPlayAnimationDuration: const Duration(
            milliseconds: 800), // Auto play animation duration (optional)
        autoPlayCurve:
            Curves.fastOutSlowIn, // Animation curve for auto play (optional)
        pauseAutoPlayOnTouch:
            true, // Pause auto play when user interacts with the carousel (optional)
        pauseAutoPlayOnManualNavigate:
            true, // Pause auto play when user manually navigates (optional) // Set the desired height (optional)
        // Pagination dot settings

      ),
    );
  }

  Stack sliderNumberOne(BuildContext context) {
    return Stack(
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
          top: MediaQuery.of(context).size.height * -0.3,
          right: MediaQuery.of(context).size.width * -0.34,
          child: Transform.rotate(
              angle: 0 * 3.1415927 / 180,
              child: Transform.scale(
                scale: 0.55,
                child: Image.asset(
                  'assets/slide1.png',
                ),
              )),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
        )
      ],
    );
  }

  Stack sliderNumberTwo(BuildContext context) {
    return Stack(
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
          bottom: MediaQuery.of(context).size.height * -0,
          right: -20.0,
          child: Transform.rotate(
              angle: 0 * 3.1415927 / 180,
              child: Transform.scale(
                scale: 0.6,
                child: Image.asset(
                  'assets/slide2_rabbit.png',
                ),
              )),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.38,
          right: MediaQuery.of(context).size.height * 0.065,
          child: Transform.rotate(
              angle: 0 * 3.1415927 / 180,
              child: Transform.scale(
                scale: 1,
                child: SvgPicture.asset(
                  'assets/slide2_text.svg',
                ),
              )),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
        )
      ],
    );
  }

  Stack sliderNumberThree(BuildContext context) {
    return Stack(
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
          bottom: MediaQuery.of(context).size.height * -0.05,
          right: MediaQuery.of(context).size.width * 0.15,
          child: Transform.rotate(
              angle: 0 * 3.1415927 / 180,
              child: Transform.scale(
                scale: 0.5,
                child: Image.asset(
                  'assets/slide3_dog.png',
                ),
              )),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.21,
          right: MediaQuery.of(context).size.width * 0.0,
          child: Transform.rotate(
              angle: 0 * 3.1415927 / 180,
              child: Transform.scale(
                scale: 1,
                child: SvgPicture.asset(
                  'assets/slide3_text.svg',
                ),
              )),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
        )
      ],
    );
  }

  Stack sliderNumberFour(BuildContext context) {
    return Stack(
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
          bottom: MediaQuery.of(context).size.height * -0.18,
          right: -120.0,
          child: Transform.rotate(
              angle: 0 * 3.1415927 / 180,
              child: Transform.scale(
                scale: 0.5,
                child: Image.asset(
                  'assets/cat1.png',
                ),
              )),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.38,
          right: MediaQuery.of(context).size.height * 0.065,
          child: Transform.rotate(
              angle: 0 * 3.1415927 / 180,
              child: Transform.scale(
                scale: 1,
                child: SvgPicture.asset(
                  'assets/cloud.svg',
                ),
              )),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
