import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/authentication/controller/signUpController.dart';
import 'package:mind_mate/pages/authentication/authenticationWidget.dart';
import 'package:mind_mate/controller/authentication/signUpNotifier/registerNotifier.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/decorations.dart';
import 'package:mind_mate/pages/utilities/globalLoader/globalLoader.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';
import 'package:mind_mate/pages/utilities/utilityWidgets.dart';

class SignUp extends ConsumerStatefulWidget {
  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  late SignUpController _controller;

  @override
  void initState() {
    _controller = SignUpController(ref: ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final regProvider = ref.watch(registerNotifierProvider);
    final loader = ref.watch(appLoaderProvider);
    print(loader);

    return Container(
      color: colorsNew.backgroundColorNew,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(title: "registrazione".toUpperCase()),
          backgroundColor: colorsNew.backgroundColorNew,
          body: loader == false
              ? SingleChildScrollView(
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
                        hintText: "Inserisci il tuo nome",
                        func: (value) => ref
                            .read(registerNotifierProvider.notifier)
                            .onNameChange(value),
                      ),
                      const SizedBox(height: 20),
                      //email textbox
                      appTextField(
                        text: "Email",
                        iconName: "assets/icons/user.png",
                        hintText: "Inserisci la tua email",
                        func: (value) => ref
                            .read(registerNotifierProvider.notifier)
                            .onEmailChange(value),
                      ),
                      const SizedBox(height: 20),

                      //password textbox
                      appTextField(
                          text: "Password",
                          iconName: "assets/icons/lock.png",
                          hintText: "Inserisci la tua password",
                          func: (value) => ref
                              .read(registerNotifierProvider.notifier)
                              .onPasswordChange(value),
                          obscureText: true),

                      const SizedBox(height: 20),
                      //email password
                      appTextField(
                          text: "Ripeti la password",
                          iconName: "assets/icons/lock.png",
                          hintText: "Reinserisci la tua password",
                          func: (value) => ref
                              .read(registerNotifierProvider.notifier)
                              .onRePasswordChange(value),
                          obscureText: true),

                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: text15Normal(
                            text:
                                "Registrandoti accetterai i nostri termini e condizioni."),
                      ),
                      const SizedBox(height: 80),
                      appButtonOne(
                          text: "Registrati",
                          func: () {
                            _controller.handleSignUp();
                          }),
                    ],
                  ),
                )
              : Center(
                  child: loaderDecoration(),
                ),
        ),
      ),
    );
  }
}
