import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';

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

// Custom Button
class LeoButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color splashColor;
  final Color textColor;
  final VoidCallback onPressed;

  const LeoButton({super.key, required this.label, required this.color, required this.splashColor, required this.textColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(2),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0), side: const BorderSide(color: Colors.black))),
            backgroundColor: MaterialStateProperty.all(color),
            overlayColor: MaterialStateProperty.all(splashColor)),
        onPressed: onPressed,
        child: Text(label, style: MainTheme.lightTheme.textTheme.headlineMedium),
      ),
    );
  }
}

// Custom Link
// ignore: must_be_immutable
class LeoLink extends StatelessWidget {
  final String linkName;
  void Function()? onTap;
  LeoLink({
    super.key,
    required this.linkName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.blue.withOpacity(0.5),
      highlightColor: Colors.blue.withOpacity(0.2),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              linkName,
              style: const TextStyle(
                color: SEColors.textColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              width: linkName.length * 6.0,
              child: const Divider(
                color: Color.fromARGB(146, 94, 94, 94),
                thickness: 1.0,
                indent: 0.0,
                endIndent: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
