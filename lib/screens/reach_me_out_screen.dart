import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ReachMeOutWidget extends StatelessWidget {
  const ReachMeOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 100, bottom: 20, left: 30, right: 40),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 60,
                                color: Colors.red,
                                spreadRadius: -30,
                                offset: Offset(0, 20),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 220),
                              Text(
                                'Vaibhav Kukreti',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text('18, Male',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black.withOpacity(0.6))),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  'I am a full stack Flutter developer. Persuing B.Tech in Computer Science from Vellore Insitute of Technology, Amravati. Been working on Flutter for more than 2 years and created more than 12 unique apps with great and distinct UI/UX.',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black)),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(LineAwesomeIcons.phone,
                                      color: Colors.black.withOpacity(0.6)),
                                  SizedBox(width: 10),
                                  Text('+91 7017846711',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color:
                                              Colors.black.withOpacity(0.6))),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(LineAwesomeIcons.envelope,
                                      color: Colors.black.withOpacity(0.6)),
                                  SizedBox(width: 10),
                                  Text('vaibhavkukreti@icloud.com',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color:
                                              Colors.black.withOpacity(0.6))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.redAccent,
                            ),
                            padding: EdgeInsets.all(1.8),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/dp.jpg'),
                              radius: 100,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 0.8,
                  height: MediaQuery.of(context).size.height / 1.5,
                  color: Colors.white.withOpacity(0.2),
                ),
                SizedBox(width: 40),
                Expanded(
                  flex: 2,
                  child: GridView.count(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 1,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    children: [
                      ContactMeTile(
                        themeColor: Color.fromARGB(255, 145, 93, 236),
                        icon: Icon(
                          LineAwesomeIcons.github,
                          size: 50,
                        ),
                        title: 'Github',
                        onTap: () {},
                      ),
                      ContactMeTile(
                        themeColor: Color.fromARGB(255, 93, 133, 236),
                        icon: Icon(
                          LineAwesomeIcons.linkedin,
                          size: 50,
                        ),
                        title: 'LinkedIn',
                        onTap: () {},
                      ),
                      ContactMeTile(
                        themeColor: Color.fromARGB(255, 61, 103, 255),
                        icon: Icon(
                          LineAwesomeIcons.facebook,
                          size: 50,
                        ),
                        title: 'Facebook',
                        onTap: () {},
                      ),
                      ContactMeTile(
                        themeColor: Color.fromARGB(255, 52, 139, 253),
                        icon: Icon(
                          LineAwesomeIcons.twitter,
                          size: 50,
                        ),
                        title: 'Twitter',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
              ],
            ),
          ),
          Spacer(),
          Text('© Vaibhav Kukreti - 2022'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ContactMeTile extends StatelessWidget {
  const ContactMeTile({
    required this.icon,
    required this.themeColor,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String title;
  final Icon icon;
  final Function onTap;
  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: themeColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                spreadRadius: -10,
                offset: Offset(0, 20),
                color: themeColor),
          ]),
      child: Center(
        child: Row(
          children: [
            icon,
            SizedBox(width: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}