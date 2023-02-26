import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String inputname;
  final String hint;
  final IconData icons;

  InputField({
    Key? key,
    required this.inputname,
    required this.hint,
    required this.icons,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

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
          Form(
            key: _formKey,
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: hint,
                hintStyle: TextStyle(
                  color: Color(0xFF8E959B),
                ),
                prefixIcon: Icon(
                  icons,
                  color: Color(0xFF0A2E36),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
