import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const Carousel(
      {Key? key, required this.screenWidth, required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.centerLeft, children: [
          Container(
            height: screenHeight,
            width: screenWidth * 0.8,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage(
                      'd.jpg',
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.95),
                      BlendMode.modulate,
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pubudu Lakmal",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 72,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "I'm a ",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "Developer",
                          textStyle: const TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                          speed: const Duration(milliseconds: 300),
                        ),
                        TypewriterAnimatedText(
                          "Learner",
                          textStyle: const TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                          speed: const Duration(milliseconds: 300),
                        ),
                        TypewriterAnimatedText(
                          "Student",
                          textStyle: const TextStyle(
                              fontSize: 35, color: Colors.white),
                          speed: const Duration(milliseconds: 300),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
