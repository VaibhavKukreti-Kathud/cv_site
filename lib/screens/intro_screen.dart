import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class IntroductoryWidget extends StatefulWidget {
  const IntroductoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<IntroductoryWidget> createState() => _IntroductoryWidgetState();
}

class _IntroductoryWidgetState extends State<IntroductoryWidget> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          const Text(
            'Hi there!',
            style: TextStyle(fontSize: 45),
          ),
          SizedBox(height: 50),
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 500),
            child: MouseRegion(
              onHover: (x) {
                setState(() {
                  _opacity = 0.5;
                  Timer(Duration(milliseconds: 500), () {
                    setState(() {
                      _opacity = 1;
                    });
                  });
                });
              },
              child: DefaultTextStyle(
                style: TextStyle(
                    fontSize: 85,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'I am Vaibhav,',
                      speed: Duration(milliseconds: 200),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 13),
          const Text(
            'A passionate programmer and UI/UX Designer.',
            style: TextStyle(fontSize: 50, color: Colors.white70),
          ),
          const Text(
            'Fluent in Dart, Flutter, and Figma.',
            style: TextStyle(fontSize: 50, color: Colors.white70),
          ),
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Swipe down',
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    LineAwesomeIcons.angle_down,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
