import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(1),
      child: Container(
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
