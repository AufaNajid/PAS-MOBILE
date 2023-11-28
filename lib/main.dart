import 'package:flutter/material.dart';
import 'package:pas_mobile11/Home_page/home_page_UI.dart';
import 'package:pas_mobile11/Login_page/login.dart';
import 'package:pas_mobile11/splash_page/splash.dart';

import 'Home_page/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}


