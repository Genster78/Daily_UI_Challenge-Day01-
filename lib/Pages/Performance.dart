import 'package:day_01/Components/App_Bar.dart';
import 'package:day_01/Components/Bottom_Button_Component.dart';
import 'package:day_01/Components/File_Upload_Field.dart';
import 'package:day_01/Components/Pages_Background_Color.dart';
import 'package:day_01/Pages/Contact_Info.dart';
import 'package:day_01/Pages/Landing_page.dart';
import 'package:flutter/cupertino.dart';
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactInfo(),
                        ),
                      );
                    },
                    child: TopAppBar(),
                  ),
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
                  const SizedBox(
                    height: 40,
                  ),
                  FileUpload(
                    title: 'Upload your photo :',
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  FileUpload(
                    title: 'Upload performance video :',
                  ),
                  const Spacer(),
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
                        const StepProgressIndicator(
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
                    child: InkWell(
                      onTap: () {
                        showCupertinoDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: createDialog,
                        );

                        // AlertDialog alert = const AlertDialog(
                        //   content: Text(
                        //     'Thank You!',
                        //     textAlign: TextAlign.center,
                        //   ),
                        //   contentTextStyle: TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 20,
                        //     fontWeight: FontWeight.bold
                        //   ),
                        //   actions: [],
                        // );
                        // showDialog(
                        //   context: context,
                        //   builder: (context) {
                        //     return alert;
                        //   },
                        // );
                      },
                      child: BottomButton(buttonname: 'Finish'),
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

  Widget createDialog(BuildContext context) => CupertinoAlertDialog(
        title: Text(
          'වැඩේ ඉවරයි 😏',
          style: TextStyle(fontSize: 22),
        ),
        content: Text(
          'පුරවල ඉවරනන් පලයන් හුත්තෝ. \n පකද බලන් ඉන්නෙ.. 😒',
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          CupertinoDialogAction(
            child: Text('බෑ හුත්තෝ 🖕'),
            onPressed: () => Navigator.pop(context),
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const LandingPage(),
            //     ),
            //   );
            // },
          ),
          CupertinoDialogAction(
            child: Text('යනව තමයි හුත්තෝ 🖕'),
            // onPressed: () => Navigator.pop(context),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LandingPage(),
                ),
              );
            },
          ),
        ],
      );
}
