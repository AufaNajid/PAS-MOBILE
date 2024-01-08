import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Login_page/login_page_UI.dart';

import '../../Component/color_component.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Get.to(
                () => LoginPage(),
          );
        },
        child: Container(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ' Login',
                  style: TextStyle(
                    color: MyColors.ocean,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
