import 'package:flutter/material.dart';
import 'package:mind_mate/pages/welcome/welcomeWidgets.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,

            scrollDirection: Axis.horizontal,
            children: [
              //first page
              appOnBoardingPage(
                  _controller,
                  imagePath: "assets/images/happy.png",
                  title: "BENVENUTO",
                  subTitle:
                      "Io sono Mind, una simpatica lampadina, e ti aiuterò a "
                          "rimanere concentrato mentre studi. ",
                  index: 1),
              //second page
              appOnBoardingPage(
                  _controller,
                  imagePath: "assets/images/run.png",
                  title: "UNA VASTA SCELTA DI FUNZIONALITA'!",
                  subTitle:
                      "Studiando con me potrai prendere appunti, segnare gli "
                          "obiettivi giorno per giorno e tanto altro ancora!",
                  index: 2),
              //third page
              appOnBoardingPage(
                  _controller,
                  imagePath: "assets/images/tongue-out.png",
                  title: "INIZIAMO",
                  subTitle:
                      "Se vuoi il mio efficiente aiuto allora dovremmo "
                          "conoscerci per bene!",
                  index: 3),
            ],
          ),
          Positioned(child: Text(""))
        ],
      ),
    );
  }
}
