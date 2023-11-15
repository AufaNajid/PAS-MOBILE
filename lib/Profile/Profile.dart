import 'package:flutter/material.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    _UserPhoto(),
                    _UserName()
                  ],
                ),
                Column(
                  children: [
                    _DataUser1(),
                    _DataUser2()
                  ],
                ),
              ],
            ),
            _NavBottom()
          ],
        ),
      ),
    );
  }
}

Widget _NavBottom(){
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    width: 350,
    height: 80,
    decoration: ShapeDecoration(
      color: Colors.black.withOpacity(0.44999998807907104),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin:EdgeInsets.only(left: 30),
          child: Icon(
            Icons.home_rounded,
            size: 38,
            color: Colors.white,
          ),
        ),
        Container(
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.local_activity,
              size: 31,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          child: Icon(
            Icons.notifications,
            size: 35,
            color: Colors.white,
          ),
        ),
        Container(
          margin:EdgeInsets.only(right: 30),
          child: Icon(
            Icons.person,
            size: 40,
            color: Color(0xFF6A1313),
          ),
        ),
      ],
    ),
  );
}
Widget _DataUser2(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    height: 285,
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFF280202),
    ),
    child: Column(
      children: [
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 10),
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: Color(0xFF787878),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130,top: 12),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10,top: 12),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF787878),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          height: 1,
          width: 270,
          color: Color(0xFF787878),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: Color(0xFF787878),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF787878),
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 12),
          height: 1,
          width: 270,
          color: Color(0xFF787878),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: Color(0xFF787878),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF787878),
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 12),
          height: 1,
          width: 270,
          color: Color(0xFF787878),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: Color(0xFF787878),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF787878),
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 12),
          height: 1,
          width: 270,
          color: Color(0xFF787878),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: Color(0xFF787878),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF787878),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _DataUser1(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    height: 105,
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFF280202),
    ),
    child: Column(
      children: [
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 10),
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: Color(0xFF787878),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130,top: 12),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10,top: 12),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF787878),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          height: 1,
          width: 270,
          color: Color(0xFF787878),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: Color(0xFF787878),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF787878),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _UserName(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Text(
      "Amanda Rezquita",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    ),
  );
}
Widget _UserPhoto(){
  return Container(
    margin: EdgeInsets.only(top: 80),
    width: 120,
    height: 120,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage("assets/image/person.jpeg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}