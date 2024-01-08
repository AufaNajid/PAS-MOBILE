import 'package:flutter/material.dart';

class SeatPlan extends StatelessWidget {
  const SeatPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/seat.png"),
            fit: BoxFit.cover,
          )
      ),
      width: 120,
      height: 120,
    );
  }
}
