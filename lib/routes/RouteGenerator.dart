import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/Route.dart';

import '../Home.dart';
import '../SplashScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());
      // case LOGINSCREEN:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => LoginScreen(args));
      case HOME:
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
