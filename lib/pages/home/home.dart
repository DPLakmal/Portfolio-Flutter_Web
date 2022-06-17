import 'package:flutter/material.dart';
import 'package:portfolio_flutter/pages/home/components/about.dart';
import 'package:portfolio_flutter/pages/home/components/carousel.dart';
import 'package:portfolio_flutter/pages/home/components/drawer.dart';
import 'package:portfolio_flutter/pages/home/components/skills.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //   backgroundColor: const Color.fromARGB(0, 1, 12, 51),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerC(screenwidth: Screenwidth),
          SingleChildScrollView(
            child: Column(
              children: [
                Carousel(
                  screenWidth: Screenwidth,
                  screenHeight: ScreenHeight,
                ),
                About(
                  screenWidth: Screenwidth,
                  screenHeight: ScreenHeight,
                ),
                Skills(
                  screenWidth: Screenwidth,
                  screenHeight: ScreenHeight,
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          // foregroundColor: Colors.blue,
          child: Material(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.all(9),
              child: Icon(Icons.arrow_upward),
            ),
          ),
          onPressed: (() {})),
    );
  }
}
