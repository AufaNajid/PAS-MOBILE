import 'package:flutter/material.dart';

class Detail_List extends StatelessWidget {
  const Detail_List({Key? key}) : super(key: key);

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
          SizedBox(width: 10),
          Column(
            children: [
              _buildProduct5(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildProduct1() {
  return Container(
    width: 170,
    height: 101,
    child: Image(
      image: AssetImage("assets/image/theaterL.png"),
    ),
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(-0.03, 1.00),
        end: Alignment(0.03, -1),
        colors: [Colors.black, Colors.black.withOpacity(0.8997728824615479), Colors.black.withOpacity(0)],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
  );
}
Widget _buildProduct2() {
  return Container(
    width: 170,
    height: 101,
    child: Image(
      image: AssetImage("assets/image/theaterL.png"),
    ),
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(-0.03, 1.00),
        end: Alignment(0.03, -1),
        colors: [Colors.black, Colors.black.withOpacity(0.8997728824615479), Colors.black.withOpacity(0)],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
  );
}
Widget _buildProduct3() {
  return Container(
    width: 170,
    height: 101,
    child: Image(
      image: AssetImage("assets/image/theaterL.png"),
    ),
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(-0.03, 1.00),
        end: Alignment(0.03, -1),
        colors: [Colors.black, Colors.black.withOpacity(0.8997728824615479), Colors.black.withOpacity(0)],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
  );
}
Widget _buildProduct4() {
  return Container(
    width: 170,
    height: 101,
    child: Image(
      image: AssetImage("assets/image/theaterL.png"),
    ),
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(-0.03, 1.00),
        end: Alignment(0.03, -1),
        colors: [Colors.black, Colors.black.withOpacity(0.8997728824615479), Colors.black.withOpacity(0)],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
  );
}
Widget _buildProduct5() {
  return Container(
    width: 170,
    height: 101,
    child: Image(
      image: AssetImage("assets/image/theaterL.png"),
    ),
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(-0.03, 1.00),
        end: Alignment(0.03, -1),
        colors: [Colors.black, Colors.black.withOpacity(0.8997728824615479), Colors.black.withOpacity(0)],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
  );
}
