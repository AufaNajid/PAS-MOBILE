import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Registration_Page/signup_page_UI.dart';
import '../../Component/color_component.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Get.off(
                () => SignUpPage()
          );
        },
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Do not have an account? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ' Sign Up',
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
