import 'package:flutter/material.dart';

class MyWorksWidget extends StatelessWidget {
  const MyWorksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                'My Work',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyWorkIllustration(
                    asset: 'assets/insta.png',
                    toPage: Container(),
                    themeColor: Colors.pinkAccent,
                  ),
                  MyWorkIllustration(
                    asset: 'assets/whatsapp.png',
                    toPage: Container(),
                    themeColor: Colors.greenAccent,
                  ),
                  MyWorkIllustration(
                    asset: 'assets/insta.png',
                    toPage: Container(),
                    themeColor: Colors.pinkAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWorkIllustration extends StatelessWidget {
  const MyWorkIllustration({
    required this.asset,
    required this.toPage,
    required this.themeColor,
    Key? key,
  }) : super(key: key);

  final String asset;
  final Widget toPage;
  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => toPage,
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: -15,
                  blurRadius: 70,
                  color: themeColor.withOpacity(0.8),
                  offset: Offset(0, 10)),
            ],
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(asset), fit: BoxFit.cover)),
      ),
    );
  }
}
