import 'package:flutter/material.dart';

Widget text24Normal({String text = ""}){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
        letterSpacing: 1.1,
        fontSize: 24,
        color: Color.fromRGBO(159, 64, 255, 1),
        fontWeight: FontWeight.w600,
      ),
  );
}

Widget text20Normal({String text = ""}){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
        fontSize: 20,
        letterSpacing: 1,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
  );
}