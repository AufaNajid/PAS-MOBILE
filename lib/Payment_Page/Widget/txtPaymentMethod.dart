import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class TxtPayMeth extends StatelessWidget {
  const TxtPayMeth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Payment Method',
        style: TextStyle(
            fontSize: 16,
            color: MyColors.txtJdlTheater,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
