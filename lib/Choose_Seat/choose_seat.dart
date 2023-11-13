import 'package:flutter/material.dart';
import 'package:pas_mobile11/Choose_Seat/seat_list.dart';

class ChooseSeat extends StatelessWidget {
  const ChooseSeat({Key? key}) : super(key: key);

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
            _TicketList(),
            Container(
              padding: EdgeInsets.only(left: 35,top: 5),
              width: 420,
              height: 120,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 150),
                      width: 190,
                      height: 110,
                      decoration: ShapeDecoration(
                        color: Color(0x1ED3D3D3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          _DataTicket(),
                        ],
                      ),
                    ),
                  _TicketImage()
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 50,top: 20),
                    child: Text(
                      "Choose seat",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 60,top: 20),
                    width: 350,
                    height: 72,
                    child: Image(
                      image: AssetImage("assets/image/opera.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  _Seat()
                ],
              ),
            ),
            _BuyTktButton()
          ],
        ),
      ),
    );
  }
}

Widget _BuyTktButton(){
  return Container(
    padding: EdgeInsets.only(top: 20),
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
              'Buy Ticket',
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
Widget _Seat(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    height: 250,
    width: 400,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 85),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 60,top: 10),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 40,top: 10),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 60,top: 10),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 85,top: 10),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.chair,
                  color: Color(0xFF808080),
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _DataTicket(){
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20,top: 5),
        child: Text(
          "Harmony on Stage: A Journey Through the Arts",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF3F3F3),
            fontSize: 10,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 35,top: 10),
            child: Text(
              "The Grand Theater",
              style: TextStyle(
                color: Color(0xFFA22929),
                fontSize: 11,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Icon(
              Icons.location_pin,
              size: 18,
              color: Color(0xFFA22929),
            ),
          )
        ],
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 35,top: 10),
            child: Text(
              "8 Mar 2023",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35,top: 10),
            child: Text(
              "6.45 PM",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: 10,right: 60),
        child: Text(
          "\$10.00",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    ],
  );
}
Widget _TicketImage(){
  return Container(
    width: 170,
    height: 110,
    decoration: ShapeDecoration(
      image: DecorationImage(
        image: AssetImage("assets/image/theaterL.png"),
        fit: BoxFit.cover,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
    ),
  );
}
Widget _TicketList(){
  return Container(
    height:160,
    width: 420,
    child: Expanded(
      flex: 1,
      child: ListView(
        padding: EdgeInsets.only(left: 35,top: 5),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Seat_List(),
        ],
      ),
    ),
  );
}
Widget _Header(){
  return Container(
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
              'Harmony on Stage: A Journey Through the Arts',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFF3F3F3),
                fontSize: 18,
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

