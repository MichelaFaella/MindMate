import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';

BoxDecoration buttonDecorations() {
  return const BoxDecoration(
      color: colorsNew.yellowNew,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
            color: colorsNew.shadowNew,
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 6))
      ]);
}

BoxDecoration buttonFormDecorationsOne() {
  return const BoxDecoration(
      color: colorsNew.yellowNew,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
            color: colorsNew.shadowNew,
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(0, 3))
      ]);
}

BoxDecoration buttonFormDecorationsTwo() {
  return const BoxDecoration(
      color: colorsNew.cardColorNew,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
            color: colorsNew.shadowNew,
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(0, 3))
      ]);
}

BoxDecoration cardDecorations() {
  return const BoxDecoration(
      color: colorsNew.cardColorNew,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
            color: colorsNew.shadowNew,
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 6))
      ]);
}

BoxDecoration fieldDecorations() {
  return const BoxDecoration(
      color: colorsNew.cardColorNew,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
            color: colorsNew.shadowNew,
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(0, 6))
      ]);
}

InputDecoration insideFieldDecorations({String hintText = ""}) {
  return InputDecoration(
    hintText: hintText,
    border: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
  );
}
