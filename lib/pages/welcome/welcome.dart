import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/welcome/welcomeWidgets.dart';

class Welcome extends StatefulWidget {
  Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _controller = PageController();

  int _dotsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorsNew.backgroundColorNew,
      child: SafeArea(
          child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            //showing the three welcome pages
            PageView(
              onPageChanged: (value) {
                print("My value is $value");
                setState(() {
                  _dotsIndex = value;
                });
              },
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                //first page
                appOnBoardingPage(_controller, context,
                    imagePath: "assets/images/happy.png",
                    title: "BENVENUTO",
                    subTitle:
                        "Io sono Mind, una simpatica lampadina, e ti aiuterò a "
                        "rimanere concentrato mentre studi. ",
                    index: 1,
                    buttonText: "Avanti"),
                //second page
                appOnBoardingPage(_controller, context,
                    imagePath: "assets/images/run.png",
                    title: "UNA VASTA SCELTA DI FUNZIONALITA'!",
                    subTitle:
                        "Studiando con me potrai prendere appunti, segnare gli "
                        "obiettivi giorno per giorno e tanto altro ancora!",
                    index: 2,
                    buttonText: "Avanti"),
                //third page
                appOnBoardingPage(
                  _controller,
                  context,
                  imagePath: "assets/images/tongue-out.png",
                  title: "INIZIAMO",
                  subTitle: "Se vuoi il mio efficiente aiuto allora dovremmo "
                      "conoscerci per bene!",
                  index: 3,
                  buttonText: "Iniziamo",
                ),
              ],
            ),
            //showing dots
            Positioned(
              child: DotsIndicator(
                position: _dotsIndex,
                dotsCount: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 8.0),
                    activeColor: colorsNew.purpleNew,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
