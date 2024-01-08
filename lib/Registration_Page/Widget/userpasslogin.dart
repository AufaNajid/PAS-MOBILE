import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Login_page/login_page_UI.dart';
import '../../Component/color_component.dart';
import '../../Home_page/home_page_UI.dart';
import 'package:pas_mobile11/Registration_Page/controller/loginController.dart';


class Userpasslogin extends StatelessWidget {
  Userpasslogin({super.key});
  RegisterPageController controller = Get.put(RegisterPageController());


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: TextField(
                controller: controller.usernameTextEditingController,
                style: TextStyle(color: Colors.black),
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
              child: TextField(
                controller: controller.emailTextEditingController,
                style: TextStyle(color: Colors.black),
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
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: ElevatedButton(
                onPressed: ()  {
                  onTap: () async {
                    if(!(controller.emailTextEditingController.text == "" && controller.passwordTextEditingController.text == "")){
                      await controller.signin(controller.usernameTextEditingController.text, controller.emailTextEditingController.text, controller.passwordTextEditingController.text);
                      Get.off(LoginPage());
                    } else if(controller.successfulRegister.value) {
                      controller.message.value = "Please fill username and password";
                      controller.successfulRegister.value = false;
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
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
        ]
    );
  }
}

