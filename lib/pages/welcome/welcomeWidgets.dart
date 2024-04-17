import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate/pages/authentication/sign_in.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/decorations.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';

Widget appOnBoardingPage(PageController controller, BuildContext context,
    {String imagePath = "",
    String title = "",
    String subTitle = "",
    int index = 0,
    String buttonText = ""}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
          margin: EdgeInsets.only(top: 15),
          decoration: cardDecorations(),
          width: 319,
          height: 270,
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: text24Normal(text: title),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: text20Normal(text: subTitle))
            ],
          )),
      nextButton(index, controller, buttonText, context),
    ],
  );
}

Widget nextButton(
    int index, PageController controller, String text, BuildContext context) {
  return GestureDetector(
    onTap: () {
      print("My index is $index");
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const SignIn(),
          ),
        );
      }
    },
    child: Container(
      width: 319,
      height: 70,
      margin: const EdgeInsets.only(top: 25),
      decoration: buttonDecorations(),
      child: text22Buttons(text: text),
    ),
  );
}

Widget nextDot(int index) {
  return DotsIndicator(
    position: index,
    dotsCount: 3,
    mainAxisAlignment: MainAxisAlignment.center,
    decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 8.0),
        activeColor: colorsNew.purpleNew,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        )),
  );
}
