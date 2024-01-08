import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Api/ControllerListTicket.dart';

class TheaterTitle extends StatelessWidget {
  final int index;

  TheaterTitle({Key? key, required this.index}) : super(key: key);

  final ControllerListTicket controller = Get.put(ControllerListTicket());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          controller.data.value.embedded!.events[index].name,
          style: TextStyle(
            fontSize: 13,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          controller.data.value.embedded!
              .events[index]
              .dates!
              .start
              .localDate,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
