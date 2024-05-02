import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/authentication/signInNotifier/loginNotifier.dart';
import 'package:mind_mate/pages/utilities/toastMessages.dart';

class SignInController {
  WidgetRef ref;

  SignInController(this.ref);

  void handleSignIn() {
    var state = ref.read(loginNotifierProvider);

    String email = state.email;
    String password = state.password;

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


  }
}
