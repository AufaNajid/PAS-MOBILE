import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Component/color_component.dart';
import '../../Home_page/home_page_UI.dart';
import '../../Tester/api_service.dart';
import 'ForgotPass_widget.dart';
import 'package:pas_mobile11/Login_page/controllerlogin/controllerLogin.dart';


class UsernPass extends StatefulWidget {
  const UsernPass({Key? key}) : super(key: key);

  @override
  State<UsernPass> createState() => _UsernPassState();
}

class _UsernPassState extends State<UsernPass> {
  LoginPageController controller = Get.put(LoginPageController());
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
            controller: controller.emailTextEditingController,
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
          margin: EdgeInsets.only(top: 20),
          child: TextField(
            controller: controller.passwordTextEditingController,
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
            onPressed: () async {{
                if(!(controller.emailTextEditingController.text == "" && controller.passwordTextEditingController.text == "")){
                  await controller.login(
                      controller.emailTextEditingController.text, controller.passwordTextEditingController.text);
                  Get.off(HomePage());
                } else {
                  controller.message.value = "Please fill username and password";
                  controller.successfulLogin.value = false;
                }
              };
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
