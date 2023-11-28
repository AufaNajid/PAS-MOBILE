import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class listcategory extends StatelessWidget {
  const listcategory({super.key});

  Widget _ButtonCategory(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Get.back(result: context);
              },
              child: Center(
                child: Container(
                  color: Colors.transparent,
                  height: double.infinity,
                  width: double.infinity,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
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
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.white,
        side: BorderSide(color: Colors.white, width: 1.0),
        minimumSize: Size(100, 35),
      ),
      child: Text('Category'),
    );
  }

  Widget _ButtonDates(){
    return  ElevatedButton(
      onPressed: () {

      },
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.white,
        side: BorderSide(color: Colors.white, width: 1.0),
        minimumSize: Size(100, 35),
      ),
      child: Text('All Dates'),
    );
  }

  Widget _ButtonDistance(){
    return  ElevatedButton(
      onPressed: () {

      },
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.white,
        side: BorderSide(color: Colors.white, width: 1.0),
        minimumSize: Size(100, 35),
      ),
      child: Text('Distance'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            _ButtonCategory(context),
            SizedBox(width: 10),
            _ButtonDates(),
            SizedBox(width: 10),
            _ButtonDistance(),
          ],
        ),
      );
  }
}
