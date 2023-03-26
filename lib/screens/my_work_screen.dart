import 'package:flutter/material.dart';

// class MyWorksWidget extends StatelessWidget {
//   const MyWorksWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 0),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 32.0),
//               child: Text(
//                 'My Work',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 40,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 65),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   MyWorkIllustration(
//                     asset: 'assets/insta.png',
//                     toPage: Container(),
//                     themeColor: Colors.pinkAccent,
//                     showShadow: ,
//                   ),
//                   MyWorkIllustration(
//                     asset: 'assets/whatsapp.png',
//                     toPage: Container(),
//                     themeColor: Colors.greenAccent,
//                     showShadow: ,
//                   ),
//                   MyWorkIllustration(
//                     asset: 'assets/insta.png',
//                     toPage: Container(),
//                     themeColor: Colors.pinkAccent,
//                     showShadow: ,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyWorkIllustration extends StatefulWidget {
  MyWorkIllustration({
    required this.asset,
    required this.toPage,
    required this.themeColor,
    required this.showShadow,
    Key? key,
  }) : super(key: key);

  final String asset;
  final Widget toPage;
  final Color themeColor;
  bool showShadow = false;

  @override
  State<MyWorkIllustration> createState() => _MyWorkIllustrationState();
}

class _MyWorkIllustrationState extends State<MyWorkIllustration> {
  bool highlight = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Text('Title',
                style: TextStyle(
                    color: widget.themeColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widget.toPage,
                ),
              ),
              onHover: (value) {
                setState(() {
                  highlight = value;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 320),
                curve: Curves.easeInOut,
                margin: EdgeInsets.only(bottom: highlight ? 20 : 0),
                height: MediaQuery.of(context).size.height *
                    (highlight ? 0.7 : 0.5),
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    boxShadow: [
                      widget.showShadow
                          ? BoxShadow(
                              spreadRadius: -4,
                              blurRadius: highlight ? 70 : 30,
                              color: widget.themeColor
                                  .withOpacity(highlight ? 0.8 : 0.6),
                              offset:
                                  Offset(0, -(highlight ? 15 : 2).toDouble()))
                          : BoxShadow(),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(widget.asset), fit: BoxFit.cover)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
