import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/authentication/signInNotifier/loginNotifier.dart';
import 'package:mind_mate/global.dart';
import 'package:mind_mate/controller/utilities/constants.dart';
import 'package:mind_mate/pages/utilities/toastMessages.dart';
import '../../../pages/application/application.dart';
import '../../../pages/utilities/globalLoader/globalLoader.dart';
import '../../../service/entity/authentication/user.dart';

class SignInController {
  WidgetRef ref;

  SignInController(this.ref);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> handleSignIn() async {
    var state = ref.read(loginNotifierProvider);

    String email = state.email;
    String password = state.password;

    emailController.text = email;
    passwordController.text = password;

    print("----This is you: $email, $password");

    RegExp emailReg = RegExp(r"^[^ ]+@[^ ]+.[a-z]{2,3}$");
    RegExp passwordReg = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[_@$!%*?&])[A-Za-z\d@$!%*?&\/]{8,}$");

    print("----Controlling: ");
    bool checkEmail = emailReg.hasMatch(email);
    print("---Email: $checkEmail");
    bool checkPassword = passwordReg.hasMatch(password);
    print("---Password: $checkPassword");

    if (email.isEmpty || password.isEmpty) {
      toastInfo("ATTENZIONE: compilare tutti i campi richiesti");
      return;
    } else if (!checkEmail) {
      toastInfo("ATTENZIONE: l'email non risulta corretta");
      return;
    } else if (!checkPassword) {
      toastInfo("ATTENZIONE: la password deve contenere 8 caratteri"
          " tra maiuscole e caratteri speciali");
      return;
    }
    print("---AUTENTICAZIONE SUPERATA---");

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    try {
      print("sto creando le credenziali");
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      if (credential.user == null) {
        toastInfo(
            "Ci scusiamo ma sembra non esserci nessun utente con queste credenziali");
      }
      if (!credential.user!.emailVerified) {
        toastInfo("Ci scusiamo ma sembra che la tua mail sia errata");
      }

      var user = credential.user;
      if (user != null) {
        String? displayName = user.displayName;
        String? email = user.email;
        String? id = user.uid;
        String? photoUrl = user.photoURL;

        LoginRequestEntity loginRequestEntity =
            LoginRequestEntity(1, displayName, email, photoUrl, id, 1);
        asyncPostAllData(loginRequestEntity);

        print("---User logged in---");
      }
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == "invalid-credential") {
        toastInfo("Queste credenziali risultano errate");
      } else if (e.code == "invalid-email") {
        toastInfo("Questa email non risulta valida");
      } else if (e.code == "wrong-password") {
        toastInfo("Questa password risulta errata");
      }
    } catch (e) {
      if (kDebugMode) {
        print("---ERRORE--- " + e.toString());
      }
    }

    ref.watch(appLoaderProvider.notifier).setLoaderValue(false);
  }

  void asyncPostAllData(LoginRequestEntity loginRequestEntity) {
    //we need to talk to server

    //have local storage
    try {
      Global.storageService.init();
      var navigator = Navigator.of(ref.context);
      print("SIMULAZIONE----------");
      //try to remember user info
      Global.storageService
          .setString(AppConstants.STORAGE_USER_PROFILE_KEY, "123");
      Global.storageService
          .setString(AppConstants.STORAGE_USER_TOKEN_KEY, "123456");

      navigator.pushNamedAndRemoveUntil("/application", (route) => false);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }

    //redirect to new page
  }
}
