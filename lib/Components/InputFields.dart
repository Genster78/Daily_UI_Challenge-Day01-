// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String inputname;
  String hint;
  IconData icons;
  InputField({
    Key? key,
    required this.inputname,
    required this.hint,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                inputname,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          // SizedBox(height: 7,),
          // Icon(icons),
          TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: hint,
              hintStyle: TextStyle(color: Color(0xFF8E959B)),
              prefixIcon: Icon(icons, color: Color(0xFF0A2E36),)
            ),
          ),
        ],
      ),
    );
  }
}
