import 'package:flutter/material.dart';
import 'package:mind_mate/pages/welcome/text_widgets.dart';

Widget appOnBoardingPage({
  String imagePath = "",
  String title = "",
  String subTitle = ""
}){
  return Column(
    children: [
      Image.asset(imagePath, fit: BoxFit.fitWidth,),
      Container(
          margin: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.white,
            ),

          width: 319,
          height: 270,
          alignment: Alignment.center,

          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: text24Normal(text: title),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: text20Normal(text: subTitle)
              )

            ],
          )
      ),

    ],
  );
}