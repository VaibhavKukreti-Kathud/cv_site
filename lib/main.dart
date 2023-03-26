import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cv_site/screens/contact_me_screen.dart';
import 'package:cv_site/screens/intro_screen.dart';
import 'package:cv_site/screens/my_work_screen.dart';
import 'package:cv_site/screens/reach_me_out_screen.dart';
import 'package:cv_site/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          displayColor: Colors.white,
          bodyColor: Colors.white,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    ).animate().fadeIn();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: ScrollTransformView(
                  children: [
                    ScrollTransformItem(builder: (scrollOffset) {
                      return AnimatedOpacity(
                        opacity: 1,
                        duration: Duration(milliseconds: 100),
                        child: Transform.translate(
                          offset: Offset(-scrollOffset * 4, scrollOffset),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
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
                                    opacity: 1,
                                    duration: const Duration(milliseconds: 500),
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                          fontSize: 85,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          Text('I am '),
                                          AnimatedTextKit(
                                            isRepeatingAnimation: false,
                                            pause: Duration(milliseconds: 10),
                                            animatedTexts: [
                                              TypewriterAnimatedText(
                                                'Vaibhav,',
                                                textStyle: TextStyle(
                                                    fontSize: 85,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red),
                                                speed:
                                                    Duration(milliseconds: 200),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 13),
                                  const Text(
                                    'A passionate programmer and UI/UX Designer.',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white70),
                                  ),
                                  const Text(
                                    'Fluent in Dart, Flutter and Figma.',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white70),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Swipe down',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    179, 255, 0, 0)),
                                          ),
                                          const SizedBox(width: 4),
                                          Icon(
                                            LineAwesomeIcons.angle_down,
                                            size: 15,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    ScrollTransformItem(builder: (scrollOffset) {
                      return MyWorksWidget();
                    }),
                    ScrollTransformItem(builder: (scrollOffset) {
                      return ContactMeWidget();
                    }),
                    ScrollTransformItem(builder: (scrollOffset) {
                      return ReachMeOutWidget();
                    }),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
