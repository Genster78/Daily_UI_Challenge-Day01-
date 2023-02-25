import 'package:day_01/Components/App_Bar.dart';
import 'package:day_01/Components/Bottom_Button_Component.dart';
import 'package:day_01/Components/InputFields.dart';
import 'package:day_01/Components/ToggleButton.dart';
import 'package:day_01/Pages/Contact_Info.dart';
import 'package:day_01/Pages/Landing_page.dart';
import 'package:day_01/custom_icons_icons.dart';
import 'package:day_01/progress__icons_icons.dart';
import 'package:flutter/material.dart';
import '../Components/Pages_Background_Color.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LandingPage(),
                        ),
                      );
                    },
                    child: TopAppBar(),
                  ),
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
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    'About :',
                    style: TextStyle(
                      color: Color(0xFF0A2E36),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 3)),
                      hintText: 'Write about you self',
                      hintStyle:
                          TextStyle(color: Color(0xFF8E959B), height: 2.5),
                      prefixIcon: Icon(
                        CustomIcons.icon__info_,
                        color: Color(0xFF0A2E36),
                      ),
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 45,
                      left: 36,
                      right: 36,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, right: 40),
                              child: Icon(Progress_Icons.one_fill),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              child: Icon(Progress_Icons.two),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 40),
                              child: Icon(Progress_Icons.three),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Personal',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0A2E36),
                                ),
                              ),
                              Text(
                                'Contact',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF0A2E36),
                                ),
                              ),
                              Text(
                                'Performance',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF0A2E36),
                                ),
                              ),
                            ],
                          ),
                        ),
                        StepProgressIndicator(
                          totalSteps: 3,
                          currentStep: 1,
                          size: 6,
                          padding: 0,
                          selectedColor: Color(0xFF0A2E36),
                          unselectedColor: Color(0xFFCACFD6),
                          roundedEdges: Radius.circular(3),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContactInfo()),
                          );
                        },
                        child: BottomButton(buttonname: 'Next')),
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
