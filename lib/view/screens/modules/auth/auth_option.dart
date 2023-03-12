import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/button.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Image.asset('assets/images/flutter_logo.png'),
        Container(
            padding: const EdgeInsets.all(20),
            color: SEColors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.5,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Let's level up your Career", style: MainTheme.lightTheme.textTheme.displaySmall),
                  const SizedBox(height: 20),
                  Text('Track your professional career status. See your progress in a better way by skill analysis. ', style: MainTheme.lightTheme.textTheme.bodyLarge),
                  const Button(
                    label: 'Login as User',
                    color: SEColors.primary,
                    textColor: SEColors.white,
                  ),
                  const SizedBox(height: 10),
                  const Button(
                    label: 'Login as Company',
                    color: SEColors.lightDark,
                    textColor: SEColors.primary,
                  ),
                ],
              ),
            ]))
      ],
    ));
  }
}
