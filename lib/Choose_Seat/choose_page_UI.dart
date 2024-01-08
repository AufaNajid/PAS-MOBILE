import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Choose_Seat/Widget/infoIcon.dart';
import 'package:pas_mobile11/Choose_Seat/Widget/seatImg.dart';
import 'package:pas_mobile11/Choose_Seat/Widget/ticketList.dart';
import 'package:pas_mobile11/Choose_Seat/Widget/title.dart';
import '../Api/ControllerListTicket.dart';
import '../Detail_Page/detail_page_UI.dart';
import '../Payment_Page/payment_page_UI.dart';
import '../Component/color_component.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({Key? key}) : super(key: key);

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
          margin: EdgeInsets.only(left: 10, right: 20,bottom: 0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: BackButton(color: Colors.white,)),
                  Container(
                      margin: EdgeInsets.only(top: 0),
                      height: 60,
                      width: 300,
                      child: TheaterTitle(index: 1)),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: InfoBtn(),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SeatImg(),
            Container(child: TicketCount()),
          ],
        ),
      ),
    );
  }
}





