import 'package:day_01/Components/App_Bar.dart';
import 'package:day_01/Components/Bottom_Button_Component.dart';
import 'package:day_01/Components/Pages_Background_Color.dart';
import 'package:flutter/material.dart';

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
                  SizedBox(height: 40,),
                  Spacer(),
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
