import 'package:flutter/material.dart';

class PageBackgroundColor extends StatelessWidget {
  const PageBackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFD6E5E3), Color(0xFF9FD8CB)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft, stops: [0.4, 0.7]), 
      ),
    );
  }
}
