import 'package:day_01/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget {
  const TopAppBar({super.key});

  @override
  State<TopAppBar> createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(CustomIcons.icon__arrow_back_outline_),
          Icon(CustomIcons.icon__menu_),
        ],
      ),
    );
  }
}