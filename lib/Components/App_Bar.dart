// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:day_01/custom_icons_icons.dart';

class TopAppBar extends StatelessWidget {
  
  TopAppBar({
    Key? key,
  }) : super(key: key);

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
