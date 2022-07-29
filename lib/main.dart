import 'dart:ui';

import 'package:cv_site/screens/intro_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  bool isExtended = false;
  PageController _pageController = PageController();
  double scrollDistance = 0.0;

  void afterBuild() {
    setState(() {
      scrollDistance = _pageController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => afterBuild());
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/gradient_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              NavigationRail(
                onDestinationSelected: (int index) {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutCirc);
                },
                backgroundColor: Colors.black.withOpacity(
                    0 + (scrollDistance / 400) < 0.7
                        ? scrollDistance / 400
                        : 0.7),
                extended: isExtended,
                leading: IconButton(
                  icon: Icon(LineAwesomeIcons.bars),
                  onPressed: () {
                    setState(() {
                      isExtended = !isExtended;
                    });
                  },
                  alignment: Alignment.centerLeft,
                ),
                selectedIndex: _index,
                selectedLabelTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                unselectedLabelTextStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 15,
                ),
                unselectedIconTheme: IconThemeData(color: Colors.white),
                selectedIconTheme: IconThemeData(color: Colors.white),
                destinations: [
                  NavigationRailDestination(
                      icon: Icon(LineAwesomeIcons.user),
                      label: Text('Introduction')),
                  NavigationRailDestination(
                      icon: Icon(LineAwesomeIcons.laptop_code),
                      label: Text('My Work')),
                  NavigationRailDestination(
                      icon: Icon(LineAwesomeIcons.medal),
                      label: Text('Qualifications')),
                ],
              ),
              Expanded(
                child: PageView(
                  pageSnapping: false,
                  controller: _pageController,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (int index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  physics: BouncingScrollPhysics(),
                  children: [
                    IntroductoryWidget(),
                    Container(
                      color: Colors.black.withOpacity(
                          0 + (scrollDistance / 400) < 0.7
                              ? scrollDistance / 400
                              : 0.7),
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.7),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: Colors.transparent,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  LineAwesomeIcons.github,
                                  size: 50,
                                ),
                                Icon(
                                  LineAwesomeIcons.linkedin,
                                  size: 50,
                                ),
                                Icon(
                                  LineAwesomeIcons.instagram,
                                  size: 50,
                                ),
                                Icon(
                                  LineAwesomeIcons.discord,
                                  size: 50,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('© Vaibhav Kukreti - 2022'),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
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
