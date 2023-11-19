import 'package:flutter/material.dart';
import 'package:pas_mobile11/Home_page/home_page_controller.dart';

class landingimage extends StatelessWidget {
  const landingimage({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 370,
        width: 300,
        child: AutoChangingImage(),
      ),
    );
      }
}
