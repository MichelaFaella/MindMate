import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/decorations.dart';
import 'package:mind_mate/pages/utilities/utilityWidgets.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';

AppBar buildAppBar({String title = ""}) {
  return AppBar(
    title: text16Normal(text: title),
    centerTitle: true,
  );
}

Widget socialLogIn() {
  return Container(
    margin: const EdgeInsets.only(left: 90, right: 90, top: 20, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton(imagePath: "assets/icons/google.png"),
        _loginButton(imagePath: "assets/icons/apple-logo.png"),
        _loginButton(imagePath: "assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _loginButton({
  String imagePath = "",
}) {
  return GestureDetector(
    child: Container(
      decoration: buttonDecorations(),
      child: appIcon(imagePath: imagePath, width: 40, height: 40),
    ),
  );
}

Widget appTextField(
    {TextEditingController? controller,
    String text = "",
    String iconName = "",
    String hintText = "",
    bool obscureText = false,
    void Function(String)? func}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text15Normal(text: text),
        Container(
          width: 325,
          height: 50,
          decoration: fieldDecorations(),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: appIcon(imagePath: iconName, width: 16, height: 16),
              ),
              Container(
                width: 280,
                height: 50,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.multiline,
                  decoration: insideFieldDecorations(hintText: hintText),
                  onChanged: (value) => func!(value),
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
