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
import 'package:size_config/size_config.dart';

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
                            width: 180.w,
                            height: 180.h),
                      ),
                      text14Description(text: "Inserisci i tuoi dati qui"),
                      SizedBox(height: 20.h),
                      //nome textbox
                      appTextField(
                        controller: _controller.nameController,
                        text: "Nome",
                        iconName: "assets/icons/user.png",
                        hintText: "Inserisci il tuo nome",
                        func: (value) => ref
                            .read(registerNotifierProvider.notifier)
                            .onNameChange(value),
                      ),
                      SizedBox(height: 20.h),
                      //email textbox
                      appTextField(
                        controller: _controller.emailController,
                        text: "Email",
                        iconName: "assets/icons/user.png",
                        hintText: "Inserisci la tua email",
                        func: (value) => ref
                            .read(registerNotifierProvider.notifier)
                            .onEmailChange(value),
                      ),
                      SizedBox(height: 20.h),

                      //password textbox
                      appTextField(
                          controller: _controller.passwordController,
                          text: "Password",
                          iconName: "assets/icons/lock.png",
                          hintText: "Inserisci la tua password",
                          func: (value) => ref
                              .read(registerNotifierProvider.notifier)
                              .onPasswordChange(value),
                          obscureText: true),

                      SizedBox(height: 20.h),
                      //email password
                      appTextField(
                          controller: _controller.rePasswordController,
                          text: "Ripeti la password",
                          iconName: "assets/icons/lock.png",
                          hintText: "Reinserisci la tua password",
                          func: (value) => ref
                              .read(registerNotifierProvider.notifier)
                              .onRePasswordChange(value),
                          obscureText: true),

                      SizedBox(height: 20.h),
                      Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: text15Normal(
                            text:
                                "Registrandoti accetterai i nostri termini e condizioni."),
                      ),
                      SizedBox(height: 80.h),
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
