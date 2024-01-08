import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class SeatData extends StatelessWidget {
  const SeatData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            'Verified Resale Ticket',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              color: MyColors.txtLocateTct,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          child: Text(
            'BALCONY',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 14,
              color: MyColors.txtLocateTct,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          child: Text(
            'Sec BALC-R, Row S, Seats 366-368',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 14,
              color: MyColors.txtLocateTct,
            ),
          ),
        ),
      ],
    );
  }
}
