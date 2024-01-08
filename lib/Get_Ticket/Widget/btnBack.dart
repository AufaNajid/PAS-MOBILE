import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Your_Ticket/TicketPage.dart';

import '../../Home_page/home_page_UI.dart';

class BtnBack extends StatelessWidget {
  const BtnBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios_new,
        size: 24,
        color: Colors.white,
      ),
      onPressed: () {
        Future.delayed(Duration(milliseconds: 500), () {
          Get.off(
                () => TicketPage(),
            duration: Duration(milliseconds: 500),
          );
        });
      },
    );
  }
}
