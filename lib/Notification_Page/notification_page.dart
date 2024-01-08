import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/color_component.dart';
import '../Home_page/home_page_UI.dart';
import 'Widget/navBottom.dart';

class Notif_Page extends StatefulWidget {
  const Notif_Page({Key? key}) : super(key: key);

  @override
  State<Notif_Page> createState() => _Notif_PageState();
}

class _Notif_PageState extends State<Notif_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: 1000,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [MyColors.ocean, MyColors.background],
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        width: 300,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: NavBottom(),
        ),
      ),
    );
  }
}

