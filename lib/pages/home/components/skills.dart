import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const Skills(
      {Key? key, required this.screenWidth, required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: screenWidth * 0.8,
        height: screenHeight,
        child: const Center(child: Text("Skils")));
  }
}
