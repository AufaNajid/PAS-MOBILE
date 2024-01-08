import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Choose_Seat/Widget/chooseSeat.dart';

import '../../Component/color_component.dart';
import '../../Payment_Page/payment_page_UI.dart';

class TicketCount extends StatefulWidget {
  const TicketCount({Key? key}) : super(key: key);

  @override
  State<TicketCount> createState() => _TicketCountState();
}

class _TicketCountState extends State<TicketCount> {
  List<String> dropdownItems = [
    "1 Ticket",
    "2 Tickets",
    "3 Tickets",
    "4 Tickets",
    "5 Tickets",
    "6 Tickets",
    "7 Tickets",
    "8 Tickets",
    "9 Tickets"
  ];
  String selectedValue = "1 Ticket"; // Default selected value
  List<bool> selectedSeats = List.generate(11, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        color: MyColors.ocean,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            selectedValue,
                            style: TextStyle(
                              color: MyColors.ocean,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(width: 50.0),
                        Container(
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(10),
                            dropdownColor: MyColors.ocean,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
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
          Stack(
            children: [
              Container(
                height: 600,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 11,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return SeatChoose(
                      index: index,
                      isSelected: selectedSeats[index],
                      onTap: () {
                        for (int i = 0; i < selectedSeats.length; i++) {
                          selectedSeats[i] = false;
                        }

                        selectedSeats[index] = true;

                        setState(() {});
                      },
                    );
                  },
                ),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: 280),
                    child: _ProceedButton()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ProceedButton() {
    return InkWell(
      onTap: () {
        List<int> selectedIndices = [];
        for (int i = 0; i < selectedSeats.length; i++) {
          if (selectedSeats[i]) {
            selectedIndices.add(i);
          }
        }

        if (selectedIndices.isNotEmpty) {
          Get.to(() => PaymentPage(selectedValue),
              transition: Transition.rightToLeft,
              duration: Duration(milliseconds: 500));
        } else {
          Get.snackbar('Error', 'Please select at least one seat.');
        }
      },
      child: Container(
        margin: EdgeInsets.all(20),
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          color: MyColors.ocean,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          'Pay',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _Filter() {
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
                fontWeight: FontWeight.w500,
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
}
