import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:pas_mobile11/Constant/Constant.dart';
import 'package:pas_mobile11/Home_page/home.dart';

class Spalsh extends StatelessWidget {
  const Spalsh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/image/splash.png'),
        ],
      ),
      backgroundColor: AppConstantColor.backgroundColor,
      nextScreen: Home(),
      splashIconSize: 250,
      duration: 4000,
    );
  }
}
