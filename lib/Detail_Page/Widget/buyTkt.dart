import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Choose_Seat/choose_page_UI.dart';
import '../../Component/color_component.dart';

class BuyTicket extends StatelessWidget {
  const BuyTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
          onTap: () {
            Get.to(
                  () => ChoosePage(),
              transition: Transition.rightToLeft,
              duration: Duration(milliseconds: 500),
            );
          },
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: MyColors.ocean,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text(
                'Buy Ticket',
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
            ),
          ),
        )
    );
  }
}
