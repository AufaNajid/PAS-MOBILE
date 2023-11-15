import 'package:flutter/material.dart';

class Notif_Page extends StatefulWidget {
  const Notif_Page({Key? key}) : super(key: key);

  @override
  State<Notif_Page> createState() => _Notif_PageState();
}

class _Notif_PageState extends State<Notif_Page> {
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
                Container(
                  margin: EdgeInsets.only(top: 100),
                  height: 300,
                  width: 300,
                  child: Image(
                    image: AssetImage("assets/image/notif.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Text(
                    "You're all cought up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Comeback later for Reminders",
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
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
            color: Color(0xFF6A1313),
          ),
        ),
        Container(
          margin:EdgeInsets.only(right: 30),
          child: Icon(
            Icons.person,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}