import 'package:mind_mate/controller/authentication/notifier/registerState.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'registerNotifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier{
  @override
  RegisterState build(){
    return RegisterState();
  }

  void onNameChange(String name){
    state = state.copyWith(name: name);
    print("We are changing the name: $name");
  }

  void onEmailChange(String email){
    state = state.copyWith(email: email);
    print("We are changing the email: $email");
  }

  void onPasswordChange(String password){
    state = state.copyWith(password: password);
    print("We are changing the password: $password");
  }

  void onRePasswordChange(String rePassword){
    state = state.copyWith(rePassword: rePassword);
    print("We are changing the rePassword: $rePassword");
  }
}