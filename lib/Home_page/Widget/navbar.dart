import 'dart:ui';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
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
                        color: Color(0xFF073C51),
                      ),
                    ),
                    Container(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.local_activity,
                          size: 31,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.notifications,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
