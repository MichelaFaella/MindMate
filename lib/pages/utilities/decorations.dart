import 'package:flutter/cupertino.dart';
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
