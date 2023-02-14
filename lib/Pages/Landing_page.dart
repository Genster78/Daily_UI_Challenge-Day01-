import 'package:day_01/Components/BackgroundIcons.dart';
import 'package:day_01/Components/Pages_Background_Color.dart';
import 'package:day_01/background__icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:day_01/Components/Bottom_Button_Component.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageBackgroundColor(),
            Column( 
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 41),
                        Icon(
                          Background_Icons.note3,
                          color: Color(0xFF9FD8CB).withOpacity(0.75),
                          size: 131,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 63),
                        Icon(
                          Background_Icons.note2,
                          color: Color(0xFF9FD8CB).withOpacity(0.75),
                          size: 131,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Background_Icons.note1,
                      color: Color(0xFF9FD8CB).withOpacity(0.75),
                      size: 131,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Background_Icons.mic,
                      color: Color(0xFF9FD8CB).withOpacity(0.7),
                      size: 131,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Background_Icons.note4,
                      color: Color(0xFF9FD8CB),
                      size: 131,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 69),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(-12.55 / 360),
                              child: Text(
                                'Ceylon',
                                style: TextStyle(
                                  fontSize: 100,
                                  fontFamily: 'Fancy-Signature',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(13),
                              child: RotationTransition(
                                turns: AlwaysStoppedAnimation(9.16 / 360),
                                child: Text(
                                  'Voice',
                                  style: TextStyle(
                                    fontSize: 75,
                                    fontFamily: 'Fancy-Signature',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      child: Image.asset(
                        'lib/Assets/Images/SingerIcon.png',
                        height: 275,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text(
                      'Make your voice heard internationally . . .',
                      style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                    ),
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: BottomButton(buttonname: 'Sign-In'),
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
