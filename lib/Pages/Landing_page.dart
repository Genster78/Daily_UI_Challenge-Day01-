import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Assets/Images/MusicSymbol1.png'),
          ),
          gradient: LinearGradient(
              colors: [Color(0xFFD6E5E3), Color(0xFF9FD8CB)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.4, 07])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 69),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RotationTransition(
                                turns: AlwaysStoppedAnimation(-12.55 / 360),
                                child: Text(
                                  "Ceylon",
                                  style: TextStyle(
                                    fontSize: 100,
                                    fontFamily: 'Fancy-Signature',
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(9.16 / 360),
                                  child: Text("Voice",
                                      style: TextStyle(
                                          fontSize: 75,
                                          fontFamily: 'Fancy-Signature'))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    // width: 300,
                    child: Image.asset(
                      'lib/Assets/Images/SingerIcon.png',
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Text(
                    'Make your voice heard internationally ',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFF0A2E36),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign-Up',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFCACFD6),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
