import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate/pages/application/applicationWidget.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/decorations.dart';
import 'package:size_config/size_config.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorsNew.cardColorNew,
      child: SafeArea(
        child: Scaffold(
          body: Container(),
          bottomNavigationBar: Container(
            width: 375.w,
            height: 78.h,
            decoration: barDecorations(),
            child: BottomNavigationBar(
              elevation: 0,
              items: bottomTabs,
            ),
          ),
        ),
      ),
    );
  }
}
