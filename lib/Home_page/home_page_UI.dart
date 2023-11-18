import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pas_mobile11/Detail_Page/detail_page_UI.dart';
import 'package:pas_mobile11/Profile/profile_page_UI.dart';
import '../Component/color_component.dart';
import 'package:get/get.dart';
import 'home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: MyColors.ocean,
        actions: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: _User(),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: _SearchIcon(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1120,
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [MyColors.ocean, MyColors.background, MyColors.background],
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    _ButtonCategory(),
                    SizedBox(width: 10),
                    _ButtonDates(),
                    SizedBox(width: 10),
                    _ButtonDistance(),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 370,
                  width: 300,
                  child: AutoChangingImage(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 25, right: 25),
                child: Row(
                  children: [
                    _SortByTxt(),
                    SortByButton(),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 510,
                  width: 360,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: _TicketList,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        width: 300,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: _NavBottom(),
        ),
      ),
    );
  }
}


Widget _User(){
  return Container(
    child: Text(
      'For Erjepireje',
      style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
    ),
  );
}
Widget _SearchIcon(){
  return Container(
    child: Icon(
      Icons.search,
      size: 35,
      color: Colors.white,
    ),
  );
}
Widget _ButtonCategory() {
  return ElevatedButton(
    onPressed: () {
      Get.dialog(
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Center(
            child: Container(
              color: Colors.transparent,
              height: double.infinity,
              width: double.infinity,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Text(
                  "Category list",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.transparent,
      onPrimary: Colors.white,
      side: BorderSide(color: Colors.white, width: 1.0),
      minimumSize: Size(100, 35),
    ),
    child: Text('Category'),
  );
}
Widget _ButtonDates() {
  return ElevatedButton(
    onPressed: () {
      // Add logic for handling button press
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.transparent,
      onPrimary: Colors.white,
      side: BorderSide(color: Colors.white, width: 1.0),
      minimumSize: Size(100, 35),
    ),
    child: Text('All Dates'),
  );
}

Widget _ButtonDistance() {
  return ElevatedButton(
    onPressed: () {
      // Add logic for handling button press
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.transparent,
      onPrimary: Colors.white,
      side: BorderSide(color: Colors.white, width: 1.0),
      minimumSize: Size(100, 35),
    ),
    child: Text('Distance'),
  );
}

Widget _SortByTxt(){
  return Container(
    child: Text(
      'Sort By:     ',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500
      ),
    ),
  );
}
Widget _Ticket(BuildContext context) {
  return InkWell(
    onTap: () {
      Get.to(
            () => DetailPage(),
        transition: Transition.rightToLeft,
        duration: Duration(milliseconds: 500),
      );
    },
    child: Container(
      height: 120,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(255, 249, 249, 0.4),
      ),
      child: Row(
        children: [
          //Image
          Container(
            margin: EdgeInsets.only(left: 15),
            height: 95,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/image/theater3.png"),
                fit: BoxFit.cover
              )
            ),
          ),
          //Data Ticket
          Container(
            margin: EdgeInsets.only(left: 10,top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "DEC 8",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: MyColors.txtDate
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Text(
                        "Sat 2.00pm",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: MyColors.ocean
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Hamilton (Chicago)",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: MyColors.txtJdlTheater
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "James M. Nederland Theatre \nChicago,IL",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: MyColors.txtLocateTct
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
Widget _TicketList(BuildContext context, int index) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: _Ticket(context),
  );
}
Widget _NavBottom() {
  return Container(
    color: Colors.black26,
    height: 80,
    child: Stack(
      children: <Widget>[
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
          child: Container(
            height: 60,
            width: 60,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.home_rounded,
                  size: 38,
                  color: Color(0xFF073C51),
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
              InkWell(
                onTap: () {
                  Get.to(
                        () => ProfilePage(),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
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

