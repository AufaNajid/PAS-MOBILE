import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Page1Content(),
      ),
    );
  }
}

class Page1Content extends StatefulWidget {
  @override
  _Page1ContentState createState() => _Page1ContentState();
}

class _Page1ContentState extends State<Page1Content> {
  String selectedItem = "Item 1"; // Default selected item

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Select an item:'),
        DropdownButton<String>(
          value: selectedItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue!;
            });
          },
          items: <String>['Item 1', 'Item 2', 'Item 3']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Navigate to Page2 and pass the selected item
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page2(selectedItem),
              ),
            );
          },
          child: Text('Go to Page 2'),
        ),
      ],
    );
  }
}

