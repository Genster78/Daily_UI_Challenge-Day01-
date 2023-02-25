// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:day_01/Pages/Personal_Info_Page.dart';

class BottomButton extends StatelessWidget {
  String buttonname;
  BottomButton({
    Key? key,
    required this.buttonname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(3, 5),
              ),
            ],
            color: Color(0xFF0A2E36),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonname,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFCACFD6),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
