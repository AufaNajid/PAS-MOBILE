import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class TicImage extends StatelessWidget {
  const TicImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 320,
      width: 300,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: MyColors.ocean,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Text(
              "Harmony on Stage: A Journey Through the Arts",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFD3D3D3),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            height: 190,
            child: Image(
              image: AssetImage("assets/image/qris.png"),
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
