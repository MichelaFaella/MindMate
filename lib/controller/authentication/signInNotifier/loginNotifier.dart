import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/authentication/signInNotifier/loginState.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(const LoginState());

  void onEmailChange(String email) {
    state = state.copyWith(email: email);
    print("We are changing the email: $email");
  }

  void onPasswordChange(String password) {
    state = state.copyWith(password: password);
    print("We are changing the password: $password");
  }
}

final loginNotifierProvider =
    StateNotifierProvider<LoginNotifier, LoginState>((ref) => LoginNotifier());
