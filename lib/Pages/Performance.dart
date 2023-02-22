import 'package:day_01/Components/App_Bar.dart';
import 'package:day_01/Components/Bottom_Button_Component.dart';
import 'package:day_01/Components/Pages_Background_Color.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../progress__icons_icons.dart';

class Performance extends StatefulWidget {
  const Performance({super.key});

  @override
  State<Performance> createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
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
                    child: Text(
                      'Performance',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  // SizedBox(height: 40,),

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
                              padding: const EdgeInsets.only(left: 45,  right: 40),
                              child: Icon(Progress_Icons.one_fill),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40, right: 40),
                              child: Icon(Progress_Icons.two),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50, right: 40),
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
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0A2E36),
                                ),
                              ),
                              Text(
                                'Performance',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0A2E36),
                                ),
                              ),
                            ],
                          ),
                        ),
                        StepProgressIndicator(
                          totalSteps: 3,
                          currentStep: 3,
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
                    child: BottomButton(buttonname: 'Finish'),
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
