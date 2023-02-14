import 'package:flutter/material.dart';

const List<Widget> fruits = <Widget>[
  Text(
    'Male',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Female',
    style: TextStyle(fontSize: 13),
  ),
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'ToggleButton';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ToggleButton(title: _title),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key, required this.title});

  final String title;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  final List<bool> _selectedFruits = <bool>[true, false];
  bool vertical = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gender :',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            width: 214,
            height: 36,
            decoration: BoxDecoration(
                color: Color(0xFFCBD2D7),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ToggleButtons(
                  direction: vertical ? Axis.vertical : Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      // The button that is tapped is set to true, and the others to false.
                      for (int i = 0; i < _selectedFruits.length; i++) {
                        _selectedFruits[i] = i == index;
                      }
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  borderWidth: 2,
                  renderBorder: false,
                  selectedBorderColor: Color(0xFFCBD2D7),
                  selectedColor: Color(0xFFCACFD6),
                  fillColor: Color(0xFF0A2E36),
                  color: Color(0xFF0A2E36),
                  // splashColor: Color(0xFFCBD2D7),
                  constraints: const BoxConstraints(
                    minHeight: 26.0,
                    minWidth: 90.0,
                  ),
                  isSelected: _selectedFruits,
                  children: fruits,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
