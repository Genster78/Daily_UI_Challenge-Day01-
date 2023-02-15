import 'package:day_01/Components/App_Bar.dart';
import 'package:day_01/Components/Bottom_Button_Component.dart';
import 'package:day_01/Components/InputFields.dart';
import 'package:day_01/Components/Pages_Background_Color.dart';
import 'package:day_01/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          PageBackgroundColor(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopAppBar(),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Contact Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                InputField(inputname: 'Email :', hint: 'Enter your email', icons: CustomIcons.icon__message_),
                SizedBox(height: 20,),
                InputField(inputname: 'Number :', hint: 'Enter your number', icons: CustomIcons.icon__call_),
                SizedBox(height: 20,),
                InputField(inputname: 'Address :', hint: 'Enter your address', icons: CustomIcons.icon__world_),
                SizedBox(height: 20,),
                InputField(inputname: 'City :', hint: 'Enter your city', icons: CustomIcons.icon__world_),
                SizedBox(height: 20,),
                InputField(inputname: 'Province :', hint: 'Enter your provice', icons: CustomIcons.icon__world_),
                SizedBox(height: 20,),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: BottomButton(buttonname: 'Next'),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
