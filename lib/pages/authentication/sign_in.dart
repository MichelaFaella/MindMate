import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorsNew.backgroundColorNew,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          backgroundColor: colorsNew.backgroundColorNew,
          body: Center(child: Text("Sign in "),),
        ),
      ),
    );
  }
}
