import 'package:flutter/material.dart';
import 'package:mind_mate/pages/authentication/authenticationWidget.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';
import 'package:mind_mate/pages/utilities/utilityWidgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorsNew.backgroundColorNew,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(title: "login".toUpperCase()),
          backgroundColor: colorsNew.backgroundColorNew,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: appIcon(
                      imagePath: "assets/images/Logo3.png",
                      width: 180,
                      height: 180),
                ),
                socialLogIn(),
                text14Description(
                    text: "O usa la tua mail per effettuare l'accesso"),
                const SizedBox(height: 50),
                //email textbox
                appTextField(
                    text: "Email",
                    iconName: "assets/icons/user.png",
                    hintText: "Inserisci la tua email"),
                const SizedBox(height: 20),
                //password textbox
                appTextField(
                    text: "Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Inserisci la tua password",
                    obscureText: true),
                const SizedBox(height: 20),
                //forgot text
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: textUnderline(text: "Password dimenticata?"),
                ),
                const SizedBox(height: 50),
                appButtonOne(text: "Accedi"),
                const SizedBox(height: 20),
                appButtonTwo(
                    text: "Registrati", context: context, pageName: "/signUp"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
