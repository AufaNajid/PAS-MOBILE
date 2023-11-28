import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pas_mobile11/Detail_Page/detail_page_UI.dart';
import 'package:pas_mobile11/Component/color_component.dart';
import 'package:get/get.dart';

class appbar extends StatelessWidget {
   appbar({super.key});

  Widget _User() {
    return Container(
      child: Text(
        'For Erjepireje',
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _SearchIcon() {
    return Container(
      child: Icon(
        Icons.search,
        size: 35,
        color: Colors.white,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: MyColors.ocean,
        actions: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: _User(),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: _SearchIcon(),
          ),
        ],
      ),
    );
  }
}
