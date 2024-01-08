import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class TxtTicket extends StatelessWidget {
  const TxtTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Ticket',
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 14,
          color: MyColors.txtLocateTct,
        ),
      ),
    );
  }
}
