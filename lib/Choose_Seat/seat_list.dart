import 'package:flutter/material.dart';

class Seat_List extends StatelessWidget {
  const Seat_List({Key? key}) : super(key: key);

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
          SizedBox(width: 20),
          Column(
            children: [
              _buildProduct2(),
            ],
          ),
          SizedBox(width: 20),
          Column(
            children: [
              _buildProduct3(),
            ],
          ),
          SizedBox(width: 20),
          Column(
            children: [
              _buildProduct4(),
            ],
          ),
          SizedBox(width: 20),
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
    height: 150,
    width: 85,
    child: Stack(
      children: [
        Container(
          height: 130,
          width: 90,
          child: Image(
            image: AssetImage("assets/image/ticket.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 22,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                    "Thu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              Container(
                  child: Text(
                    "8",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _buildProduct2() {
  return Container(
    height: 150,
    width: 85,
    child: Stack(
      children: [
        Container(
          height: 130,
          width: 90,
          child: Image(
            image: AssetImage("assets/image/ticket.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 22,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                    "Wed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              Container(
                  child: Text(
                    "9",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _buildProduct3() {
  return Container(
    height: 150,
    width: 85,
    child: Stack(
      children: [
        Container(
          height: 130,
          width: 90,
          child: Image(
            image: AssetImage("assets/image/ticket.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                    "Sat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              Container(
                  child: Text(
                    "10",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _buildProduct4() {
  return Container(
    height: 150,
    width: 85,
    child: Stack(
      children: [
        Container(
          height: 130,
          width: 90,
          child: Image(
            image: AssetImage("assets/image/ticket.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                    "Sun",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              Container(
                  child: Text(
                    "11",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _buildProduct5() {
  return Container(
    height: 150,
    width: 85,
    child: Stack(
      children: [
        Container(
          height: 130,
          width: 90,
          child: Image(
            image: AssetImage("assets/image/ticket.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                    "Mon",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              Container(
                  child: Text(
                    "12",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD3D3D3),
                      fontSize: 50,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
