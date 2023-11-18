import 'dart:async';

import 'package:flutter/material.dart';
import '../Component/color_component.dart';

class AutoChangingImage extends StatelessWidget {
  final List<String> assetImagePaths = [
    'assets/image/theater1.jpeg',
    'assets/image/theater2.jpeg',
    'assets/image/theater3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _ImageSlider(assetImagePaths: assetImagePaths),
    );
  }
}

class _ImageSlider extends StatefulWidget {
  final List<String> assetImagePaths;

  const _ImageSlider({required this.assetImagePaths});

  @override
  __ImageSliderState createState() => __ImageSliderState();
}

class __ImageSliderState extends State<_ImageSlider>
    with SingleTickerProviderStateMixin {
  late Timer timer;
  late AnimationController _controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _changeImageWithDelay();
    _startTimer();
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _changeImageWithDelay();
    });
  }

  Future<void> _changeImageWithDelay() async {
    await Future.delayed(Duration(seconds: 0));
    _controller.forward(from: 0.0);
    setState(() {
      currentIndex = (currentIndex + 1) % widget.assetImagePaths.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeTransition(
        opacity: _controller,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(widget.assetImagePaths[currentIndex]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    _controller.dispose();
    super.dispose();
  }
}

class SortByButton extends StatefulWidget {
  const SortByButton({Key? key}) : super(key: key);

  @override
  State<SortByButton> createState() => _SortByButtonState();
}

class _SortByButtonState extends State<SortByButton> {
  List<String> dropdownItems = ["Most Popular", "Date", "Name A-Z", "Name Z-A"];
  String? selectedValue;

  void _handleSortByChange(String? newValue) {
    setState(() {
      selectedValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "${selectedValue ?? 'Most Popular'}",
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(width: 10),
          Container(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(20),
              dropdownColor: MyColors.ocean,
              underline: Container(), // Remove the underline
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.white, // Change icon color to white
              ),
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: _handleSortByChange,
            ),
          ),
        ],
      ),
    );
  }
}
