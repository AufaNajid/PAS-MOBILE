import 'package:flutter/material.dart';
import 'package:pas_mobile11/Choose_Seat/choose_page_UI.dart';
import 'package:pas_mobile11/Detail_Page/detail_page_UI.dart';
import 'package:pas_mobile11/Home_page/home_page_UI.dart';
import 'package:pas_mobile11/Login_page/login_page_UI.dart';
import 'package:pas_mobile11/Payment_Page/payment_page_UI.dart';
import 'package:pas_mobile11/splash_page/splash.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Route Example',
        initialRoute: '/',
        routes: {
    '/': (context) => Splash(),
    '/login': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/detail': (context) => DetailPage(index: 0, eventName: '', imageUrl: ''),
    '/chose': (context) => ChoosePage(),
    // '/payment': (context) => PaymentPage(),
    },
        );
    }
}
