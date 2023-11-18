import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Payment_Page/Payment.dart';
import '../Component/color_component.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
          margin: EdgeInsets.only(left: 10, bottom: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _BackBtn(context),
                  _TheaterTitle(),
                ],
              ),
              _InfoIcn(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SeatingPlan(),
            Container(
              height: 80,
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
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 250,
                    child: TicketCount(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        color: MyColors.ocean,
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 50,
                    width: 110,
                    child: _Filter(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        color: MyColors.ocean,
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _SeatChooseList()
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
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hamilton Chicago",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      Text(
        "Sat • Nov 25 • 2.00pm",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
Widget _InfoIcn() {
  return Container(
    child: Icon(
      Icons.info_outline,
      size: 30,
      color: Colors.white,
    ),
  );
}
Widget _SeatingPlan() {
  return Center(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black12,
          image: DecorationImage(
            image: AssetImage("assets/image/seat.png"),
            fit: BoxFit.cover,
          )
      ),
      width: double.infinity,
      height: 250,
    ),
  );
}
class TicketCount extends StatefulWidget {
  const TicketCount({Key? key}) : super(key: key);

  @override
  State<TicketCount> createState() => _TicketCountState();
}
class _TicketCountState extends State<TicketCount> {
  List<String> dropdownItems = ["1 Ticket", "2 Ticket", "3 Ticket", "4 Ticket", "5 Ticket", "6 Ticket", "7 Ticket", "8 Ticket", "9 Ticket"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${selectedValue ?? '1 Ticket'}",
            style: TextStyle(color: MyColors.ocean,fontSize: 16,fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 70.0),
          Container(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              dropdownColor: MyColors.ocean,
              style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
              underline: Container(),
              icon: Icon(
                Icons.arrow_drop_down,
                size: 30,
                color: MyColors.ocean,
              ),
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
Widget _Filter(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Text(
            'Filter',
            style: TextStyle(
              fontSize: 18,
              color: MyColors.ocean,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Icon(
            Icons.filter_list,
            color: MyColors.ocean,
            size: 24,
          ),
        )
      ],
    ),
  );
}
Widget _SeatChoose(){
  return InkWell(
    onTap: () {
      Get.to(
            () => Payment_Page(),
        transition: Transition.rightToLeft,
        duration: Duration(milliseconds: 500),
      );
    },
    child: Container(
      height: 70,
      width: double.infinity,
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
            margin: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Sec BALC-L, Row U',
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.txtJdlTheater,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Verified Resale Ticket',
                    style: TextStyle(
                      fontSize: 12,
                      color: MyColors.txtLocateTct,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Text(
              '\$107.00',
              style: TextStyle(
                  fontSize: 18,
                  color: MyColors.ocean,
                  fontWeight: FontWeight.w700
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _SeatChooseList() {
  return Container(
    height: 600,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 11,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return _SeatChoose();
      },
    ),
  );
}


