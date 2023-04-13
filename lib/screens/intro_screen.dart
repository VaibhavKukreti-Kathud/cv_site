import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class IntroductoryWidget extends StatefulWidget {
  const IntroductoryWidget({
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final Function() onPressed;

  @override
  State<IntroductoryWidget> createState() => _IntroductoryWidgetState();
}

class _IntroductoryWidgetState extends State<IntroductoryWidget> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
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
              child: DefaultTextStyle(
                style: TextStyle(
                    fontSize: 85,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                child: Row(
                  children: [
                    Text('I am '),
                    Text(
                      'Vaibhav',
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 13),
            const Text(
              'A passionate programmer and UI/UX Designer.',
              style: TextStyle(fontSize: 50, color: Colors.white70),
            ),
            const Text(
              'Fluent in Dart, Flutter and Figma.',
              style: TextStyle(fontSize: 50, color: Colors.white70),
            ),
            Spacer(),
            Center(
              child: InkWell(
                onTap: widget.onPressed,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  margin: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Swipe down',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color.fromARGB(179, 255, 0, 0)),
                      ),
                      Icon(
                        LineAwesomeIcons.angle_down,
                        size: 15,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
