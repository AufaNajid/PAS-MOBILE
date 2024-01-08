import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:pas_mobile11/Component/color_component.dart';
import 'package:pas_mobile11/Login_page/login.dart';
import 'package:pas_mobile11/Login_page/login_page_UI.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/image/splash.png'),
        ],
      ),
      backgroundColor: MyColors.background,
      nextScreen: LoginPage(),
      splashIconSize: 250,
      duration: 3000,
    );
  }
}
