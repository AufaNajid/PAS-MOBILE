import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/color_component.dart';
import '../../Get_Ticket/get_ticket.dart';

class PayBtn extends StatelessWidget {
  const PayBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(MyColors.ocean),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Processing payment...',
                        style: TextStyle(color: MyColors.ocean),
                      ),
                    ],
                  ),
                );
              },
            );
            Future.delayed(Duration(seconds: 2), () {
              Navigator.of(context).pop();

              Get.off(
                    () => Get_Ticket(),
              );
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: MyColors.ocean,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Pay',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
