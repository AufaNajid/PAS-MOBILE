import 'package:flutter/material.dart';
import '../Component/color_component.dart';
import 'Widget/Header_widget.dart';
import 'Widget/Login_widget.dart';
import 'Widget/usern_pass_email_widget.dart';

class SignUpPage extends StatelessWidget {
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
                  SizedBox(height: 40),
                  UsernPassEmail(),
                  SizedBox(height: 10),
                  SizedBox(height: 120),
                  Login()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



