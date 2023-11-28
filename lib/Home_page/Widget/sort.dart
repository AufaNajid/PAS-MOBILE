import 'package:flutter/material.dart';
import 'package:pas_mobile11/Home_page/home_page_controller.dart';

class sort extends StatelessWidget {
  const sort({super.key});

  Widget _SortByTxt(){
    return Container(
      child: Text(
        'Sort By:     ',
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 5, left: 25, right: 25),
      child: Row(
        children: [
          _SortByTxt(),
          SortByButton(),
        ],
      ),
    );
    }
}
