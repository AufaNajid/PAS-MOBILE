import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class SeatChoose extends StatelessWidget {
  final int index;
  final bool isSelected;
  final Function() onTap;

  SeatChoose({
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? MyColors.ocean.withOpacity(0.5) : Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Sec BALC-L, Row U',
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors.txtJdlTheater,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Verified Resale Ticket',
                      style: TextStyle(
                        fontSize: 12,
                        color: MyColors.txtLocateTct,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Text(
                '\$107.00',
                style: TextStyle(
                  fontSize: 18,
                  color: MyColors.ocean,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
