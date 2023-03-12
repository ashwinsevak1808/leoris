import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;

  const Button({super.key, required this.label, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color),
                elevation: const MaterialStatePropertyAll(0),
                textStyle: MaterialStatePropertyAll(TextStyle(color: textColor, fontFamily: 'Open Sans', fontSize: 16.0, wordSpacing: 1, fontWeight: FontWeight.w600))),
            onPressed: () {},
            child: Text(label)));
  }
}
