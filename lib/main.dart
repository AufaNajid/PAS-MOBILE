import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import Get package
import 'package:pas_mobile11/Choose_Seat/choose_page_UI.dart';
import 'package:pas_mobile11/Home_page/home_page_UI.dart';
import 'package:pas_mobile11/Login_page/login.dart';
import 'package:pas_mobile11/Profile/profile_page_UI.dart';
import 'package:pas_mobile11/Registration_Page/signup_page_UI.dart';
import 'package:pas_mobile11/splash_page/splash.dart';

import 'Login_page/login_page_UI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Ganti dengan GetMaterialApp
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
      // getPages: [
      //   GetPage(name: '/', page: () => Splash()),
      //   GetPage(name: '/login', page: () => LoginPage()),
      //   GetPage(name: '/home', page: () => HomePage()),
      //   GetPage(name: '/choose-seat', page: () => ChoosePage()),
      // ],
    );
  }
}
