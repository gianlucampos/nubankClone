// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'constants/Colors.dart';
// import 'constants/Route.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   SplashScreenState createState() => new SplashScreenState();
// }
//
// class SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   var _visible = true;
//
//   AnimationController animationController;
//   Animation<double> animation;
//
//   startTime() async {
//     var _duration = new Duration(seconds: 3);
//     return new Timer(_duration, navigationPage);
//   }
//
//   void navigationPage() {
//     Navigator.of(context).pushReplacementNamed(HOME);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     animationController = new AnimationController(
//         vsync: this, duration: new Duration(seconds: 2));
//     animation =
//         new CurvedAnimation(parent: animationController, curve: Curves.easeOut);
//
//     animation.addListener(() => this.setState(() {}));
//     animationController.forward();
//
//     setState(() {
//       _visible = !_visible;
//     });
//     startTime();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: PURPLE_BACKGROUND,
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           new Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             mainAxisSize: MainAxisSize.min,
//           ),
//           new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new Image.asset(
//                 'assets/images/icon/off_white/nu_symbol_offwhite.svg',
//                 width: animation.value * 250,
//                 height: animation.value * 250,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
