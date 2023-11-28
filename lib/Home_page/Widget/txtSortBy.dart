import 'package:flutter/material.dart';

class TxtSortBy extends StatelessWidget {
  const TxtSortBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
