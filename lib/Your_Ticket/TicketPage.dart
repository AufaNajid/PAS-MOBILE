import 'package:flutter/material.dart';

import '../Component/color_component.dart';
import 'Widget/navBottom.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: 1120,
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [MyColors.ocean, MyColors.background, MyColors.background],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        width: 300,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: NavBottom(),
        ),
      ),
    );
  }
}
