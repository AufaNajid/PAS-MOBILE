import 'package:flutter/material.dart';
import 'package:pas_mobile11/Api/ControllerListTicket.dart';
import 'package:pas_mobile11/Component/color_component.dart';
import 'package:pas_mobile11/Home_page/Widget/landing_image.dart';
import 'package:pas_mobile11/Home_page/Widget/list_category.dart';
import 'package:pas_mobile11/Home_page/Widget/list_ticket.dart';
import 'package:pas_mobile11/Home_page/Widget/navbar.dart';
import 'package:pas_mobile11/Home_page/Widget/sort.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  final ControllerListTicket controller = Get.put(ControllerListTicket());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: MyColors.ocean,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Container(
              child: Text(
                'For Erjepireje',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Container(
              child: Icon(
                Icons.search,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
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
        child: Column(
          children: [
            listcategory(),
            landingimage(),
            sort(),
            ListTicket()
          ],
        ),
      )
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
