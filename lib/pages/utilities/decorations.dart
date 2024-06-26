import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';
import 'package:size_config/size_config.dart';

AppBar buildAppBar({String title = ""}) {
  return AppBar(
    title: text16Normal(text: title),
    centerTitle: true,
  );
}

CircularProgressIndicator loaderDecoration() {
  return CircularProgressIndicator(
    backgroundColor: colorsNew.yellowNew,
    color: colorsNew.purpleNew,
  );
}

BoxDecoration circularButtonDecorations() {
  return const BoxDecoration(
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

BoxDecoration barDecorations() {
  return BoxDecoration(
      color: colorsNew.cardColorNew,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.h), topLeft: Radius.circular(20.h)),
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
