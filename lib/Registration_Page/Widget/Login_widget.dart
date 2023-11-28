import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
