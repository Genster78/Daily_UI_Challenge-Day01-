import 'dart:html';

import 'package:day_01/custom_icons_icons.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FileUpload extends StatelessWidget {
  final String title;
  const FileUpload({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF0A2E36),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(15),
            dashPattern: [18],
            strokeWidth: 2,
            color: Color(0xFF0A2E36),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      CustomIcons.icon__cloud_upload_,
                      size: 50,
                      color: Color(0xFF231F20),
                    ),
                    // SizedBox(
                    //   width: 35,
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Drag and Drop file to Upload',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0A2E36),
                          ),
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0A2E36),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Browse',
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
