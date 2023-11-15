import 'package:flutter/material.dart';

class Get_Ticket extends StatefulWidget {
  const Get_Ticket({Key? key}) : super(key: key);

  @override
  State<Get_Ticket> createState() => _Get_TicketState();
}

class _Get_TicketState extends State<Get_Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 1000,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, 1.00),
            end: Alignment(0, -1),
            colors: [Color(0xFF270101), Color(0xFF631111), Color(0xFF000000), Color(0xFF000000)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _Header(),
            _Ticket(),
            _Data(),
            _ButtonDownload()
          ],
        ),
      ),
    );
  }
}

Widget _ButtonDownload(){
  return Container(
    margin: EdgeInsets.only(top: 120),
    padding: EdgeInsets.only(left: 110,top: 40),
    width: 420,
    height: 100,
    child: Stack(
      children: [
        Container(
          width: 199,
          height: 50,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              'Download',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6A1313),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _Data(){
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 160,
    width: 300,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Color(0xFF280202),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Name",
                  style: TextStyle(
                    color: Color(0xFF939393),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Amanda Rezquita Jamila",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20,top: 15,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Date",
                      style: TextStyle(
                        color: Color(0xFF939393),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "8 Mar 2023",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Time",
                      style: TextStyle(
                        color: Color(0xFF939393),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "6.45PM - 8.00PM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Location",
                  style: TextStyle(
                    color: Color(0xFF939393),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "The Grand Theater",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
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
Widget _Ticket(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    height: 320,
    width: 300,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Color(0xFF280202),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Container(
          margin:EdgeInsets.only(top: 20,right: 20,left: 20),
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
Widget _Header(){
  return Container(
    child: Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_rounded,
              size: 34,
              color: Color(0xFFD3D3D3),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 50),
              child: Text(
                "Your Ticket",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF3F3F3),
                  fontSize: 19,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}