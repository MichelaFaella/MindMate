import 'package:flutter/material.dart';
import 'package:mind_mate/pages/authentication/authenticationWidget.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/decorations.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';

Widget appIcon({
  String imagePath = "",
  double width = 0,
  double height = 0,
}) {
  return Image.asset(
    imagePath,
    width: width,
    height: height,
  );
}

Widget appButtonOne({String text = ""}) {
  return GestureDetector(
      onTap: () {
        print("hello");
      },
      child: Center(
        child: Container(
          width: 325,
          height: 50,
          decoration: buttonFormDecorationsOne(),
          child: text22WhiteButtons(text: text),
        ),
      ));
}

Widget appButtonTwo({
  String text = "",
  BuildContext? context,
  String pageName = "",
}) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context!,
          pageName
        );
      },
      child: Center(
        child: Container(
          width: 325,
          height: 50,
          decoration: buttonFormDecorationsTwo(),
          child: text22BlackButtons(text: text),
        ),
      ));
}
