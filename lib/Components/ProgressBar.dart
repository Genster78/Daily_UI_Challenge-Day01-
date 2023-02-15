import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LinearProgressIndicator(
        value: 0.33,
        backgroundColor: Color(0xFFCACFD6),
        color: Color(0xFF0A2E36),
        
      ),
    );
  }
}
