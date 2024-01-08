import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pas_mobile11/Home_page/Widget/btnCategory.dart';
import 'package:pas_mobile11/Home_page/Widget/btnDates.dart';
import 'package:pas_mobile11/Home_page/Widget/btnDistance.dart';
import 'package:pas_mobile11/Home_page/Widget/listTicket.dart';
import 'package:pas_mobile11/Home_page/Widget/navBottom.dart';
import 'package:pas_mobile11/Home_page/Widget/search.dart';
import 'package:pas_mobile11/Home_page/Widget/txtSortBy.dart';
import 'package:pas_mobile11/Home_page/Widget/user.dart';
import '../Component/color_component.dart';
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
            child: User(),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Search(),
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
                    BtnCategory(),
                    SizedBox(width: 10),
                    BtnDates(),
                    SizedBox(width: 10),
                    BtnDistance(),
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
                    TxtSortBy(),
                    SortByButton(),
                  ],
                ),
              ),
              Center(
                child: ListTicket(),
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
          child: NavBottom(),
        ),
      ),
    );
  }
}


