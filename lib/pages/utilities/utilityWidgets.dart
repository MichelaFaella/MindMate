import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/decorations.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';

Widget appIcon({
  String imagePath = "",
  double width = 0,
  double height = 0,
}){
  return Image.asset(
      imagePath,
      width: width,
      height: height,
   );
}

Widget appButtonOne({String text = ""}){
  return GestureDetector(
    child: Center(
      child: Container(
        width: 325,
        height: 50,
        decoration: buttonFormDecorationsOne(),
        child: text22WhiteButtons(text: text),
      ),
    )
  );
}

Widget appButtonTwo({String text = ""}){
  return GestureDetector(
      child: Center(
        child: Container(
          width: 325,
          height: 50,
          decoration: buttonFormDecorationsTwo(),
          child: text22BlackButtons(text: text),
        ),
      )
  );
}