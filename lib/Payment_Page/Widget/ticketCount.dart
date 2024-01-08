import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class txtTicketCount extends StatelessWidget {
  const txtTicketCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Verified Resale Ticket',
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
                '\$107.00',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 16,
                    color: MyColors.txtJdlTheater,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
