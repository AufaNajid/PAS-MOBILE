import 'package:flutter/material.dart';
import 'package:pas_mobile11/Detail_Page/Widget/buyTkt.dart';
import 'package:pas_mobile11/Detail_Page/Widget/txtDesc.dart';

import '../Component/color_component.dart';
import 'Widget/txtDetail.dart';

class DetailPage extends StatelessWidget {
  final int index;
  final String eventName;
  final String imageUrl;

  DetailPage({
    required this.index,
    required this.eventName,
    required this.imageUrl,
  });

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
                margin: EdgeInsets.only(left: 0),
                child: BackButton(
                  color: Colors.white,
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 0,top: 5),
                  child: TxtDetail(),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 340,
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.ocean,
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 210,
                    width: 380,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Text(
                    '$eventName',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          TxtDesc(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20),
          height:70 ,child: BuyTicket())
    );
  }
}


