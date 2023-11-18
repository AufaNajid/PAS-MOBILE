import 'package:flutter/material.dart';
import '../Component/color_component.dart';
import 'package:get/get.dart';

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
                child: _BackBtn(context),
              ),
              Container(
                margin: EdgeInsets.only(left: 100),
                child: _TheaterTitle(),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: _TicketPic(),
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
                      child: _SeatingPlan()
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: _SeatData(),
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
                      child: _TicketCount()),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _txtTicket(),
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
                      child: _Pay()),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: _PaymentBtn()),
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
              offset: Offset(0, -3), // negative offset to cast shadow only at the top
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
                      _txtSubtotal(),
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
              child: _PayBtn()
            ),
          ],
        ),
      ),
    );
  }
}

Widget _BackBtn(BuildContext context) {
  return IconButton(
    icon: Icon(
      Icons.arrow_back_ios_new,
      size: 24,
      color: Colors.white,
    ),
    onPressed: () {
      Future.delayed(Duration(milliseconds: 500), () {
        Get.back();
      });
    },
  );
}
Widget _TheaterTitle() {
  return Center(
    child: Text(
      "Payment",
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
Widget _TicketPic(){
  return Container(
    child: Image(
      image: AssetImage("assets/image/hamilton.jpg"),
      fit: BoxFit.cover,
    ),
  );
}
Widget _SeatingPlan() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/seat.png"),
          fit: BoxFit.cover,
        )
      ),
    width: 120,
    height: 120,
  );
}
Widget _SeatData(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        child: Text(
          'Verified Resale Ticket',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 16,
            color: MyColors.txtLocateTct,
          ),
        ),
      ),
      SizedBox(height: 5),
      Container(
        child: Text(
          'BALCONY',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 14,
            color: MyColors.txtLocateTct,
          ),
        ),
      ),
      SizedBox(height: 5),
      Container(
        child: Text(
          'Sec BALC-R, Row S, Seats 366-368',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 14,
            color: MyColors.txtLocateTct,
          ),
        ),
      ),
    ],
  );
}
Widget _TicketCount(){
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Verified Resale Ticket',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14,
                color: MyColors.txtLocateTct,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            child: Text(
              '\$107.00',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                color: MyColors.txtJdlTheater,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ],
      )
    ],
  );
}
Widget _txtTicket(){
  return Container(
    child: Text(
      'Ticket',
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: 14,
        color: MyColors.txtLocateTct,
      ),
    ),
  );
}
Widget _Pay(){
  return Container(
    child: Text(
      'Payment Method',
      style: TextStyle(
        fontSize: 16,
        color: MyColors.txtJdlTheater,
        fontWeight: FontWeight.w500
      ),
    ),
  );
}
Widget _PaymentBtn(){
  return Container(
    child: Row(
      children: [
        Container(
          child: Text(
            'Credit Card',
            style: TextStyle(
                fontSize: 16,
                color: MyColors.txtJdlTheater,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 24,
          color: MyColors.txtJdlTheater,
        ),
      ],
    ),
  );
}
Widget _txtSubtotal(){
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Text(
      'Subtotal',
      style: TextStyle(
          fontSize: 17,
          color: MyColors.txtJdlTheater,
          fontWeight: FontWeight.w500
      ),
    ),
  );
}
Widget _PayBtn(){
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 50,
    width: 250,
    decoration: BoxDecoration(
        color: MyColors.ocean,
        borderRadius: BorderRadius.circular(10)
    ),
    child: Center(
      child: Text(
        'Pay',
        style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w700
        ),
      ),
    ),
  );
}
