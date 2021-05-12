import 'package:flutter/material.dart';
import "./home_screen.dart";
import "package:webportfolio/constants.dart";
import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:responsive_framework/responsive_framework.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*builder: (context, widget) => ResponsiveWrapper.builder(
        HomeScreen(),
        maxWidth: 1200,
        minWidth: 400,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP)
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
      ),*/
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      /*home: AnimatedSplashScreen(
        splash: Image.asset("assets/images/logo_1.png"),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
        duration: 4000,
      ),*/
    );
  }
}
