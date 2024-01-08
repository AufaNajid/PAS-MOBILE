import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:pas_mobile11/Get_Ticket/Widget/btnBack.dart';
import 'package:pas_mobile11/Get_Ticket/Widget/downBtn.dart';
import 'package:pas_mobile11/Get_Ticket/Widget/ticData.dart';
import 'package:pas_mobile11/Get_Ticket/Widget/ticImg.dart';
import 'package:pas_mobile11/Get_Ticket/Widget/txtYourTicket.dart';
import 'package:pas_mobile11/Payment_Page/Widget/ticketImg.dart';

import '../Component/color_component.dart';
import '../Home_page/home_page_UI.dart';

class Get_Ticket extends StatefulWidget {
  const Get_Ticket({Key? key}) : super(key: key);

  @override
  State<Get_Ticket> createState() => _Get_TicketState();
}

class _Get_TicketState extends State<Get_Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                MyColors.ocean,
                MyColors.background2,
                MyColors.txtSortBy,
              ],
            ),
          ),
        ),
        leadingWidth: double.infinity,
        leading: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: BtnBack(),
              ),
              Container(
                margin: EdgeInsets.only(left: 0),
                child: TxtYT(),
              )
            ],
          ),
        ),
      ),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TicImage(),
            TicData(),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: BtnDownload(),
            )
          ],
        ),
      ),
    );
  }
}

