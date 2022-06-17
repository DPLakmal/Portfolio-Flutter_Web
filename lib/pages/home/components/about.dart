import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const About({Key? key, required this.screenWidth, required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      width: screenWidth * 0.8,
      height: screenHeight,
    );
  }
}
