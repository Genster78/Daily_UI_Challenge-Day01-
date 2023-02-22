import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepProgressBar extends StatefulWidget {
  const StepProgressBar({super.key});

  @override
  State<StepProgressBar> createState() => _StepProgressBarState();
}

class _StepProgressBarState extends State<StepProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StepProgressIndicator(totalSteps: 3)
    );
  }
}
