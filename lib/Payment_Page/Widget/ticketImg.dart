import 'package:flutter/material.dart';

class TicketImage extends StatelessWidget {
  const TicketImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage("assets/image/hamilton.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }
}
