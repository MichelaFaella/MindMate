import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/authentication/signUpNotifier/registerNotifier.dart';
import 'package:mind_mate/pages/utilities/globalLoader/globalLoader.dart';
import 'package:mind_mate/pages/utilities/toastMessages.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String name = state.name;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    print("----This is you: $name, $email, $password, $rePassword");

    RegExp nameReg = RegExp(r"^[A-Za-z]+$");
    RegExp emailReg = RegExp(r"^[^ ]+@[^ ]+.[a-z]{2,3}$");
    RegExp passwordReg = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[_@$!%*?&])[A-Za-z\d@$!%*?&\/]{8,}$");

    print("----Controlling: ");
    bool checkName = nameReg.hasMatch(name);
    print("---Name: $checkName");
    bool checkEmail = emailReg.hasMatch(email);
    print("---Email: $checkEmail");
    bool checkPassword = passwordReg.hasMatch(password);
    print("---Password: $checkPassword");

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        rePassword.isEmpty) {
      toastInfo("ATTENZIONE: compilare tutti i campi richiesti");
      return;
    } else if (state.password != state.rePassword) {
      toastInfo("ATTENZIONE: le password non corrispondono");
      return;
    } else if (!checkName) {
      toastInfo("ATTENZIONE: inserire un nome corretto");
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

    //show the loading
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    var context = Navigator.of(ref.context);
    try {
      print("sto creando le credenziali");
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (kDebugMode) {
        print("credenziali $credential");
      }

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);
        //get server photo url
        //set user photo url
        toastInfo("Ti abbiamo mandato una mail per verificare la tua identità");
        context.pop();
      }
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == "weak-password") {
        print("toast di merda");
        toastInfo("Questa password è troppo debole");
      } else if (e.code == "email-already-in-use") {
        toastInfo("Questa email risulta già in uso");
      } else if (e.code == "invalid-email") {
        toastInfo("Questa email non risulta valida");
      }
    } catch (e) {
      if (kDebugMode) {
        print("---ERRORE--- " + e.toString());
      }
    }

    //show the page
    ref.watch(appLoaderProvider.notifier).setLoaderValue(false);
  }
}
