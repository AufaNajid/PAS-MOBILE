import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String selectedItem;

  Page2(this.selectedItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Received Item:'),
            Container(
              child: Text(
                selectedItem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
