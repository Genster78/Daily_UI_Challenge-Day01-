import 'package:day_01/Components/App_Bar.dart';
import 'package:day_01/Components/InputFields.dart';
import 'package:day_01/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import '../Components/Pages_Background_Color.dart';

class PersonalInfomation extends StatefulWidget {
  const PersonalInfomation({super.key});

  @override
  State<PersonalInfomation> createState() => _PersonalInfomationState();
}

class _PersonalInfomationState extends State<PersonalInfomation> {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      child: Column(
                        children: [
                          InputField(inputname: 'Full Name :',  ),
                          SizedBox(height: 20,),
                          InputField(inputname: 'Birthday :',),
                          SizedBox(height: 20,),
                          InputField(inputname: 'NIC :', )
                        ],
                      ),
                    ),
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
