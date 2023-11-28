
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Home_page/home_page_UI.dart';
import '../../Tester/api_service.dart';
import '../../Component/color_component.dart';

class UsernPassEmail extends StatefulWidget {
  const UsernPassEmail({Key? key}) : super(key: key);

  @override
  State<UsernPassEmail> createState() => _UsernPassEmailState();
}

class _UsernPassEmailState extends State<UsernPassEmail> {
  final ApiService apiService = ApiService();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
          margin: EdgeInsets.only(top: 10),
          child: TextField(
            controller: emailController,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
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
        Container(
          margin: EdgeInsets.only(top: 10),
          child: TextField(
            controller: confirmPasswordController,
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              labelStyle: TextStyle(color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
        Center(
          child: InkWell(
            onTap: () {
              Get.off(() => HomePage());
            },
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: MyColors.ocean,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
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
