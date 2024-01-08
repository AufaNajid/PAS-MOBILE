import 'package:flutter/material.dart';
import 'package:pas_mobile11/Payment_Page/Widget/creditCard.dart';
import 'package:pas_mobile11/Payment_Page/Widget/payBtn.dart';
import 'package:pas_mobile11/Payment_Page/Widget/seatData.dart';
import 'package:pas_mobile11/Payment_Page/Widget/seatPlan.dart';
import 'package:pas_mobile11/Payment_Page/Widget/ticketCount.dart';
import 'package:pas_mobile11/Payment_Page/Widget/ticketImg.dart';
import 'package:pas_mobile11/Payment_Page/Widget/txtPay.dart';
import 'package:pas_mobile11/Payment_Page/Widget/txtPaymentMethod.dart';
import 'package:pas_mobile11/Payment_Page/Widget/txtSubTtl.dart';
import '../Component/color_component.dart';
import 'Widget/txtTicket.dart';

class PaymentPage extends StatelessWidget {
  final String selectedValue;

  double ticketPrice = 101.00;
  double subtotal = 0.00;
  PaymentPage(this.selectedValue);

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
                child: BackButton(color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(left: 0,top: 2),
                child: TxtPaymen(),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: TicketImage(),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                      child: SeatPlan()
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: SeatData(),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                      child: txtTicketCount()),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TxtTicket(),
                        SizedBox(height: 5),
                        Text(selectedValue,
                          style: TextStyle(
                              fontSize: 16,
                              color: MyColors.txtJdlTheater,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: TxtPayMeth()),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: TxtCreditCard()),
                ],
              ),
            )
          ],
        )
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, -3),
            ),
          ],
        ),
        height: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TxtSub(),
                      SizedBox(height: 5),
                      Text(selectedValue,
                        style: TextStyle(
                            fontSize: 16,
                            color: MyColors.txtJdlTheater,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      '\$${(double.parse(selectedValue.replaceAll(RegExp(r'[^0-9.]'), '')) * 107.00).toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 20,
                        color: MyColors.txtJdlTheater,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: PayBtn()
            ),
          ],
        ),
      ),
    );
  }
}
