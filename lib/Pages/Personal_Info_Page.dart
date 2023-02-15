import 'package:day_01/Components/App_Bar.dart';
import 'package:day_01/Components/Bottom_Button_Component.dart';
import 'package:day_01/Components/InputFields.dart';
import 'package:day_01/Components/ProgressBar.dart';
import 'package:day_01/Components/ToggleButton.dart';
import 'package:day_01/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import '../Components/Pages_Background_Color.dart';

class PersonalInfomation extends StatefulWidget {
  const PersonalInfomation({super.key});

  @override
  State<PersonalInfomation> createState() => _PersonalInfomationState();
}

class _PersonalInfomationState extends State<PersonalInfomation> {
  get isSelected => [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageBackgroundColor(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopAppBar(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Information',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  InputField(
                      inputname: 'User Name :',
                      hint: 'Enter your full name',
                      icons: CustomIcons.icon__person_),
                  SizedBox(height: 20),
                  InputField(
                      inputname: 'Birthday :',
                      hint: 'Enter your birthday',
                      icons: CustomIcons.icon__calendar_),
                  SizedBox(height: 20),
                  InputField(
                      inputname: 'NIC :',
                      hint: 'Enter your NIC number',
                      icons: CustomIcons.icon__person_),
                  SizedBox(height: 20),
                  ToggleButton(
                    title: 'Gender',
                  ),
                  SizedBox(height: 26,),
                  InputField(
                    inputname: 'About :',
                    hint: 'Write about your self',
                    icons: CustomIcons.icon__info_,
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: ProgressBar(),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: BottomButton(buttonname: 'Next'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
