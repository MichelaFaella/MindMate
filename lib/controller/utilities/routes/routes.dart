import 'package:flutter/material.dart';
import 'package:mind_mate/controller/utilities/routes/appRoutesNames.dart';
import 'package:mind_mate/global.dart';
import 'package:mind_mate/pages/application/application.dart';
import 'package:mind_mate/pages/authentication/signIn.dart';
import 'package:mind_mate/pages/authentication/signUp.dart';
import 'package:mind_mate/pages/welcome/welcome.dart';

class AppPages {
  static List<RouteEntity> routes() {
    return [
      RouteEntity(path: AppRotesNames.WELCOME, page: Welcome()),
      RouteEntity(path: AppRotesNames.SIGN_IN, page: SignIn()),
      RouteEntity(path: AppRotesNames.SIGN_UP, page: SignUp()),
      RouteEntity(path: AppRotesNames.APPLICATION, page: Application()),
    ];
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    print("**This is my name route ${settings.name}**");

    if (settings.name != null) {
      var result = routes().where((element) => element.path == settings.name);

      if (Global.storageService.isLoggedIn()) {
        return MaterialPageRoute(
            builder: (_) => Application(), settings: settings);
      }

      //if we are using this app for the first time or not
      if (result.first.path == AppRotesNames.WELCOME &&
          Global.storageService.getDeviceFirstOpen()) {
        return MaterialPageRoute(builder: (_) => SignIn(), settings: settings);
      }

      return MaterialPageRoute(
          builder: (_) => result.first.page, settings: settings);
    }

    return MaterialPageRoute(builder: (_) => Welcome(), settings: settings);
  }
}

class RouteEntity {
  String path;
  Widget page;

  RouteEntity({required this.path, required this.page});
}
