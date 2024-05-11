import 'package:flutter/material.dart';
import 'package:mind_mate/controller/utilities/constants.dart';
import 'package:mind_mate/pages/utilities/decorations.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';
import 'package:size_config/size_config.dart';

import '../../global.dart';

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
          margin: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
          decoration: cardDecorations(),
          width: 319.w,
          height: 270.h,
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.w),
                child: text24Normal(text: title),
              ),
              Padding(
                  padding: EdgeInsets.all(10.w),
                  child: text20Normal(text: subTitle))
            ],
          )),
      _nextButton(index, controller, buttonText, context),
    ],
  );
}

Widget _nextButton(
    int index, PageController controller, String text, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      } else {
        //if we are using this app for the first time or not
        Global.storageService
            .setBool(AppConstants.STORAGE_DEVICE_OPEN_FIRST_KEY, true);

        Navigator.pushNamed(
          context,
          "/signIn",
        );
      }
    },
    child: Container(
      width: 319,
      height: 70,
      margin: EdgeInsets.only(top: 25.h),
      decoration: buttonDecorations(),
      child: text22WhiteButtons(text: text),
    ),
  );
}
