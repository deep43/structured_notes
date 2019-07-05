import 'package:flutter/material.dart';
import 'dashBoard/DashBoard.dart';
import 'package:animated_splash/animated_splash.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Structured Notes",
        home: new Material(child: new Container(child: new DashBoard())));
        /*home:AnimatedSplash(
          imagePath: 'assets/images/appletouchstartupimage.png',
          home: Material(child: new Container(child: new DashBoard())),
          duration: 2500,
          type: AnimatedSplashType.StaticDuration,
//          outputAndHome: op,
        ),*/
    //);
  }
}
