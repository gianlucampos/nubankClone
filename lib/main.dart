import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'routes/RouteGenerator.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      theme: ThemeData(
        primaryColor: PURPLE_BACKGROUND,
        accentColor: PURPLE_BACKGROUND,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
