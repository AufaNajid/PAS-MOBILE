import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Component/color_component.dart';
import '../../Home_page/home_page_UI.dart';
import '../../Tester/api_service.dart';
import 'ForgotPass_widget.dart';


class UsernPass extends StatefulWidget {
  const UsernPass({Key? key}) : super(key: key);

  @override
  State<UsernPass> createState() => _UsernPassState();
}

class _UsernPassState extends State<UsernPass> {
  final ApiService apiService = ApiService();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: TextField(
            controller: usernameController,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: TextField(
            controller: passwordController,
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        ForgotPass(),
        SizedBox(height: 100),
        Center(
          child: ElevatedButton(
            onPressed: () {
              if (usernameController.text == "admin" &&
                  passwordController.text == "admin") {
                Get.off(() => HomePage());
              } else {
                setState(() {
                  errorMessage = 'Invalid username or password';
                });
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(MyColors.ocean),
              fixedSize: MaterialStateProperty.all<Size>(
                Size(200.0, 50.0), // Set the width and height of the button
              ),
            ),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        SizedBox(height: 16),
        Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
