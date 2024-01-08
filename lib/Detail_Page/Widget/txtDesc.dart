import 'package:flutter/material.dart';

import '../../Component/color_component.dart';

class TxtDesc extends StatelessWidget {
  const TxtDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Description",
              style: TextStyle(
                fontSize: 18,
                color: MyColors.ocean,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "The theater, a mesmerizing space where stories come alive under the spotlight. With heavy velvet curtains parting, anticipation fills the air as emotions unfold through the artistry of actors, dancers, and musicians. The intimate yet grand architecture echoes with tales, inviting the audience to be part of a shared experience—laughter, tears, and collective wonder. In this creative haven, reality blends with fiction, leaving lasting memories in the hearts of those enchanted by the magic of live performance.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
