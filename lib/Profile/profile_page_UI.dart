import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Home_page/home_page_UI.dart';
import '../Component/color_component.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [MyColors.ocean, MyColors.background],
          ),
        ),
        child: Column(
          children: [
            Container  (
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white12,
                  )
                )
              ),
              child: Column(
                children: [
                  _ProfilePic(),
                  _UserName()
                ],
              ),
            ),
            SizedBox(height: 20),
            _EditProfile(),
            SizedBox(height: 5),
            _ChangePassword(),
            SizedBox(height: 5),
            _NotifSet(),
            SizedBox(height: 5),
            _LastSeen(),
            SizedBox(height: 5),
            _Logout()
          ],
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

Widget _ProfilePic(){
  return Container(
    margin: EdgeInsets.only(top: 80),
    height: 130,
    width: 130,
    child: ClipOval(
      child: Image(image: AssetImage("assets/image/person.jpeg")),
    ),
  );
}
Widget _UserName(){
  return  Container(
    margin: EdgeInsets.only(top: 20),
    child: Text(
      'Erjepireje',
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        color: Colors.white
      ),
    ),
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
              InkWell(
                onTap: () {
                  Get.back(
                        result: () => HomePage(),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.home_rounded,
                    size: 38,
                    color: Colors.white,
                  ),
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
                margin: EdgeInsets.only(right: 30),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Color(0xFF073C51),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _EditProfile(){
  return Container(
    height: 60,
    margin: EdgeInsets.only(left: 40,right: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.person,
                  size: 32,
                  color: MyColors.ocean,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 26,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
Widget _ChangePassword(){
  return Container(
    height: 60,
    margin: EdgeInsets.only(left: 40,right: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.lock_person_rounded,
                  size: 32,
                  color: MyColors.ocean,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Change Password',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 26,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
Widget _NotifSet(){
  return Container(
    height: 60,
    margin: EdgeInsets.only(left: 40,right: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.notifications,
                  size: 34,
                  color: MyColors.ocean,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Notification Setting',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 26,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
Widget _LastSeen(){
  return Container(
    height: 60,
    margin: EdgeInsets.only(left: 40,right: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.access_time_filled_rounded,
                  size: 29,
                  color: MyColors.ocean,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14),
                child: Text(
                  'Last Seen',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 26,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
Widget _Logout(){
  return Container(
    height: 60,
    margin: EdgeInsets.only(left: 40,right: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.logout_outlined,
                  size: 32,
                  color: MyColors.logout,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 18,
                      color: MyColors.logout,
                      fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 26,
            color: MyColors.logout,
          ),
        ),
      ],
    ),
  );
}