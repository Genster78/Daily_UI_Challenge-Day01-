// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:day_01/custom_icons_icons.dart';

class InputField extends StatelessWidget {
  String inputname;
  // IconData icon;
  InputField({
    Key? key,
    required this.inputname,
    // required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputname,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Enter Your User Name',
              prefixIcon: Icon(CustomIcons.icon__call_)
            ),
          )
        ],
      ),
    );
  }
}
