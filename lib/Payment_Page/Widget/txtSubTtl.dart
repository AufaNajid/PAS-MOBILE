import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class TxtSub extends StatelessWidget {
  const TxtSub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Text(
        'Subtotal',
        style: TextStyle(
            fontSize: 17,
            color: MyColors.txtJdlTheater,
            fontWeight: FontWeight.w500
        ),
      ),
    );  }
}
