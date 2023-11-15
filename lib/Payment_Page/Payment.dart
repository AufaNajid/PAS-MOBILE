import 'package:flutter/material.dart';
import 'package:pas_mobile11/Payment_Page/Payment_list.dart';

class Payment_Page extends StatefulWidget {
  const Payment_Page({Key? key}) : super(key: key);

  @override
  State<Payment_Page> createState() => _Payment_PageState();
}

class _Payment_PageState extends State<Payment_Page> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(),  
            Container(
              width: 420,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Total Price",
                      style: TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontSize: 19,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  _TotalPrice()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Payment Method",
                      style: TextStyle(
                        color: Color(0xFFD3D3D3),
                        fontSize: 19,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  _SelectPayment()
                ],
              ),
            ),
            _CardNumberInput(),
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ValidUntilInput(),
                  _CVVInput(),
                ],
              ),
            ),
            _CardHolderInput(),
            _SaveData(),
            _PayButton()
          ],
        ),
      ),
    );
  }
}

Widget _PayButton(){
  return Container(
    padding: EdgeInsets.only(left: 110,top: 40),
    width: 420,
    height: 100,
    child: Stack(
      children: [
        Container(
          width: 199,
          height: 50,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              'Pay',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6A1313),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _SaveData(){
  return Container(
    margin: EdgeInsets.only(left: 20,top: 20),
    child: Text(
      "Save card data for future payments",
      style: TextStyle(
        color: Color(0xFFD3D3D3),
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    ),
  );
}
Widget _CardHolderInput(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "Card Holder",
            style: TextStyle(
              color: Color(0xFFD3D3D3),
              fontSize: 19,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        Container(
          height: 60,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFFD3D3D3),
            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _ValidUntilInput(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: 20),
        child: Text(
          "Valid Until",
          style: TextStyle(
            color: Color(0xFFD3D3D3),
            fontSize: 19,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
      Container(
        height: 60,
        width: 180,
        margin: EdgeInsets.only(left: 20, top: 20),
        decoration: BoxDecoration(
          color: Color(0xFFD3D3D3),
          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}
Widget _CVVInput(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text(
          "CVV",
          style: TextStyle(
            color: Color(0xFFD3D3D3),
            fontSize: 19,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
      Container(
        height: 60,
        width: 180,
        margin: EdgeInsets.only(right: 20, top: 20),
        decoration: BoxDecoration(
          color: Color(0xFFD3D3D3),
          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}
Widget _CardNumberInput(){
  return Container(
    margin: EdgeInsets.only(top: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "Card Number",
            style: TextStyle(
              color: Color(0xFFD3D3D3),
              fontSize: 19,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        Container(
          height: 60,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFFD3D3D3),
            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _SelectPayment(){
  return Container(
    height:60,
    width: 420,
    child: Expanded(
      flex: 1,
      child: ListView(
        padding: EdgeInsets.only(top: 20,left: 20),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Payment_List(),
        ],
      ),
    ),
  );
}
Widget _TotalPrice(){
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Text(
      "\$10.00",
      style: TextStyle(
        color: Colors.white,
        fontSize: 38,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    ),
  );
}
Widget _Header(){
  return Container(
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.arrow_back_rounded,
            size: 34,
            color: Color(0xFFD3D3D3),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 50),
            child: Text(
              "Payment",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFF3F3F3),
                fontSize: 19,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}