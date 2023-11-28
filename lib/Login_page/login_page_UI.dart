import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Home_page/home_page_UI.dart';
import 'package:pas_mobile11/Registration_Page/signup_page_UI.dart';
import '../Component/color_component.dart';
import '../Tester/api_service.dart';
import 'Widget/Header.dart';
import 'Widget/SignIn_widget.dart';
import 'Widget/SignUp_widget.dart';
import 'Widget/usern_pass_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1200,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [MyColors.ocean, MyColors.background],
          ),
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              margin: EdgeInsets.only(top: 120, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  SizedBox(height: 30),
                  UsernPass(),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      SignIn(),
                    ],
                  ),
                  SizedBox(height: 10),
                  SignUp()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



