import 'package:flutter/material.dart';
import 'package:mind_mate/pages/welcome/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            
            scrollDirection: Axis.horizontal,
            children: [
              //first page
              appOnBoardingPage(imagePath: "assets/images/happy.png", title: "BENVENUTO", subTitle: "Io sono Mind, una simpatica lampadina, e ti aiuterò a rimanere concentrato mentre studi. "),
              //second page
              appOnBoardingPage(imagePath: "assets/images/run.png", title: "UNA VASTA SCELTA DI FUNZIONALITA'!", subTitle: "Studiando con me potrai prendere appunti, segnare gli obiettivi giorno per giorno e tanto altro ancora!"),
              //third page
              appOnBoardingPage(imagePath: "assets/images/tongue-out.png", title: "INIZIAMO", subTitle: "Se vuoi il mio efficiente aiuto allora dovremmo conoscerci per bene!"),
            ],
          ),

        ],
      ),
    );
  }


}

