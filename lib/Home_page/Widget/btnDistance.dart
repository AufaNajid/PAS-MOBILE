import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnDistance extends StatelessWidget {
  const BtnDistance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.dialog(
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                  child: Center(
                    child: Text(
                      "Category list",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.white, width: 1.0),
        ),
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 35,
        ),
        child: Center(
          child: Text(
            'Distance',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
