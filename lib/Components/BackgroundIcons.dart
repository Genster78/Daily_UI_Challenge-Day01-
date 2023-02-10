// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BackgroundIcons extends StatelessWidget {
  IconData icon;
  BackgroundIcons({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Color(0xFF9FD8CB).withOpacity(0.75),
      ),
    );
  }
}
