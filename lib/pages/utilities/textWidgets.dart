import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';

Widget text24Normal({String text = ""}){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
        letterSpacing: 1.1,
        fontSize: 24,
        color: colorsNew.purpleNew,
        fontWeight: FontWeight.w600,
      ),
  );
}

Widget text20Normal({String text = ""}){
  return Center(
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20,
        letterSpacing: 1,
        color: colorsNew.textColorNew,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Widget text22Buttons({String text = ""}){
  return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22,
          letterSpacing: 1,
          color: colorsNew.cardColorNew,
          fontWeight: FontWeight.w600,
        ),
      ),
  );
}