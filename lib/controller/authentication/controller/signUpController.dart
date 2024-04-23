import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/authentication/notifier/registerNotifier.dart';

class SignUpController{
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp(){
    var state = ref.read(registerNotifierProvider);

    String name = state.name;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    print("This is you: $name, $email, $password, $rePassword");
  }
}