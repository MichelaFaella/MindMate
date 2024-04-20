import 'dart:ui';

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

Widget text16Normal({String text = ""}){
  return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
        letterSpacing: 1,
        color: colorsNew.textColorNew,
        fontWeight: FontWeight.w400,
      ),
  );
}

Widget text15Normal({String text = ""}){
  return Text(
    text,
    textAlign: TextAlign.start,
    style: const TextStyle(
      fontSize: 15,
      color: colorsNew.textColorNew,
      fontWeight: FontWeight.w200,
    ),
  );
}

Widget text14Description({String text = ""}){
  return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: "San Serif",
          fontSize: 14,
          color: colorsNew.textDescrioptionColorNew,
          fontWeight: FontWeight.w500,
        ),
      ),
  );
}



Widget text22WhiteButtons({String text = ""}){
  return Center(
      child: Text(
        text.toUpperCase(),
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

Widget text22BlackButtons({String text = ""}){
  return Center(
    child: Text(
      text.toUpperCase(),
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 22,
        letterSpacing: 1,
        color: colorsNew.textColorNew,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget textUnderline({String text = ""}){
  return GestureDetector(
    onTap: (){

    },
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: colorsNew.textDescrioptionColorNew,
          decoration: TextDecoration.underline,
          decorationColor: colorsNew.purpleNew,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "San Serif"
        ),
      ),
    ),
  );
}