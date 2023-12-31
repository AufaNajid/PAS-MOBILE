import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile11/Component/color_component.dart';
import 'package:pas_mobile11/Notification_Page/notification_page.dart';
import 'package:pas_mobile11/Your_Ticket/TicketPage.dart';

import '../../Profile/profile_page_UI.dart';

class NavBottom extends StatelessWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      height: 80,
      child: Stack(
        children: <Widget>[
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
            child: Container(
              height: 60,
              width: 60,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.home_rounded,
                    size: 38,
                    color: MyColors.HoverNav,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                          () => TicketPage(),
                    );
                  },
                  child: Container(
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.local_activity,
                        size: 31,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                          () => Notif_Page(),
                    );
                  },
                  child: Container(
                    child: Icon(
                      Icons.notifications,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                          () => ProfilePage(),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
