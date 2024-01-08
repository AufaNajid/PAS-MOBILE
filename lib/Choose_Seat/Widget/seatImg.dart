import 'package:flutter/material.dart';

class SeatImg extends StatelessWidget {
  const SeatImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          image: DecorationImage(
            image: AssetImage("assets/image/seat.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: 250,
      ),
    );
  }
}
