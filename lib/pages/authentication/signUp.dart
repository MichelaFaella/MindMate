import 'package:flutter/material.dart';
import 'package:mind_mate/pages/authentication/authenticationWidget.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';
import 'package:mind_mate/pages/utilities/utilityWidgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorsNew.backgroundColorNew,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(title: "registrazione".toUpperCase()),
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
                text14Description(text: "Inserisci i tuoi dati qui"),
                const SizedBox(height: 20),
                //nome textbox
                appTextField(
                    text: "Nome",
                    iconName: "assets/icons/user.png",
                    hintText: "Inserisci il tuo nome"),
                const SizedBox(height: 20),
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
                //email password
                appTextField(
                    text: "Ripeti la password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Reinserisci la tua password",
                    obscureText: true),

                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: text15Normal(
                      text: "Devi accettare i nostri termini e condizioni."),
                ),
                const SizedBox(height: 80),
                appButtonOne(text: "Registrati"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
