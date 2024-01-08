import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          child: Text(
            "To continue your account!",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
