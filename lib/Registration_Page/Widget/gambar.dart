import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: 420,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 130,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: Image(
                    image: AssetImage("assets/image/facebook2.png"),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: 42,
                  height: 42,
                  child: Image(
                    image: AssetImage("assets/image/google.png"),
                  ),
                ),
                Container(
                  width: 46,
                  height: 46,
                  child: Image(
                    image: AssetImage("assets/image/apple.png"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "Sign in with another account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
