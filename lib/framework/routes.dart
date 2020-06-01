import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:uparty/pages/home/home.dart';
import 'package:uparty/pages/login/login.dart';
import 'package:uparty/pages/splash/splash.dart';

class Routes {
  static void configureRoutes(Router router) {
    router.define('/', handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return SplashPage();
    }));
    router.define('/home', handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return HomePage();
    }));
    router.define('/login', handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return LoginPage();
    }));

  }
}
