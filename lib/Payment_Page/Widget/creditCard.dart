import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class TxtCreditCard extends StatelessWidget {
  const TxtCreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Text(
              'Credit Card',
              style: TextStyle(
                  fontSize: 16,
                  color: MyColors.txtJdlTheater,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 24,
            color: MyColors.txtJdlTheater,
          ),
        ],
      ),
    );
  }
}
