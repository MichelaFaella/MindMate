import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/authentication/signInNotifier/loginNotifier.dart';
import 'package:mind_mate/pages/authentication/authenticationWidget.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/utilities/globalLoader/globalLoader.dart';
import 'package:mind_mate/pages/utilities/textWidgets.dart';
import 'package:mind_mate/pages/utilities/utilityWidgets.dart';
import 'package:size_config/size_config.dart';

import '../../controller/authentication/controller/signInController.dart';
import '../utilities/decorations.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  late SignInController _controller;

  @override
  void initState() {
    _controller = SignInController(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = ref.watch(loginNotifierProvider);
    final loader = ref.watch(appLoaderProvider);

    return Container(
      color: colorsNew.backgroundColorNew,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(title: "login".toUpperCase()),
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
                      socialLogIn(),
                      text14Description(
                          text: "O usa la tua mail per effettuare l'accesso"),
                      SizedBox(height: 50.h),
                      //email textbox
                      appTextField(
                        controller: _controller.emailController,
                        text: "Email",
                        iconName: "assets/icons/user.png",
                        hintText: "Inserisci la tua email",
                        func: (value) => ref
                            .read(loginNotifierProvider.notifier)
                            .onEmailChange(value),
                      ),
                      SizedBox(height: 20.h),
                      //password textbox
                      appTextField(
                        controller: _controller.passwordController,
                        text: "Password",
                        iconName: "assets/icons/lock.png",
                        hintText: "Inserisci la tua password",
                        obscureText: true,
                        func: (value) => ref
                            .read(loginNotifierProvider.notifier)
                            .onPasswordChange(value),
                      ),
                      SizedBox(height: 20.h),
                      //forgot text
                      Container(
                        margin: EdgeInsets.only(left: 25.w),
                        child: textUnderline(text: "Password dimenticata?"),
                      ),
                      SizedBox(height: 50.h),
                      appButtonOne(
                          text: "Accedi",
                          func: () {
                            _controller.handleSignIn();
                          }),

                      SizedBox(height: 20.h),
                      appButtonTwo(
                          text: "Registrati",
                          context: context,
                          pageName: "/signUp"),
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
