import 'package:flutter/material.dart';

import '../Home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      // case HOME:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => SplashScreen());
      // case LOGINSCREEN:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => LoginScreen(args));
      case '/':
        return MaterialPageRoute(settings: settings, builder: (_) => Home());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Erro'),
        ),
        body: Center(
          child: Text('Página não encontrada!'),
        ),
      );
    });
  }
}
