import 'package:flutter/material.dart';

class Payment_List extends StatelessWidget {
  const Payment_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Adjust the direction as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              _buildProduct1(),
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              _buildProduct2(),
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              _buildProduct3(),
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              _buildProduct4(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildProduct1() {
  return Container(
    width: 120,
    height: 40,
    child: Stack(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
            ),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'PayPal',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
                ),
              ),
          ),
          ),
      ],
    ),
  );
}
Widget _buildProduct2() {
  return Container(
    width: 120,
    height: 40,
    child: Stack(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
            ),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'PayPal',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
                ),
              ),
          ),
          ),
      ],
    ),
  );
}
Widget _buildProduct3() {
  return Container(
    width: 120,
    height: 40,
    child: Stack(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
            ),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'PayPal',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
                ),
              ),
          ),
          ),
      ],
    ),
  );
}
Widget _buildProduct4() {
  return Container(
    width: 120,
    height: 40,
    child: Stack(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
            ),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'PayPal',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
                ),
              ),
          ),
          ),
      ],
    ),
  );
}

