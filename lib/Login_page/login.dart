import 'package:flutter/material.dart';
import 'package:pas_mobile11/Constant/Constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/image/appbar.png'),
          RichText(
            text: TextSpan(
              text: 'Thea',
              style: TextStyle(
                color: AppConstantColor.fontcolor, // Warna untuk "Thea"
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '’Art',
                  style: TextStyle(
                    color: Colors.white, // Warna untuk "’Art"
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )

        ],

      ),
    );
  }
}
