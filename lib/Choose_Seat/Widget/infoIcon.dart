import 'package:flutter/material.dart';

class InfoBtn extends StatelessWidget {
  const InfoBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.info_outline,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
