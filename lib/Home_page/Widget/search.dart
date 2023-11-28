import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.search,
        size: 35,
        color: Colors.white,
      ),
    );
  }
}
