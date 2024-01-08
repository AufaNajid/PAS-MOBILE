import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios_new,
        size: 24,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    );
  }
}
