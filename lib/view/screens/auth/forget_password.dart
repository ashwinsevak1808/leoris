import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/button.dart';
import 'package:leories/view/widgets/global/text_input.dart';

class LeoForgetPassword extends StatefulWidget {
  const LeoForgetPassword({super.key});

  @override
  State<LeoForgetPassword> createState() => _LeoForgetPasswordState();
}

class _LeoForgetPasswordState extends State<LeoForgetPassword> {
  // Input field Controllers
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(bottom: 50, right: 30),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/loginbg.png',
                ),
                fit: BoxFit.cover)),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(16)),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(9, 18, 27, 0.938),
                Color.fromRGBO(17, 5, 39, 0.966),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  const Text('Forget Password', style: TextStyle(fontSize: 32, color: SEColors.white, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('Hey, have you forgetton your password??', style: MainTheme.lightTheme.textTheme.labelMedium),
                  const SizedBox(height: 30),
                  LeoInputField(
                    controller: emailController,
                    label: 'E-mail address',
                    textInputType: TextInputType.emailAddress,
                    hintText: 'E-mail address',
                    labelText: 'E-mail address',
                    iconPrefix: const Icon(
                      Icons.email_rounded,
                      color: SEColors.textColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  LeoButton(label: 'Continue', color: SEColors.lightRed, splashColor: SEColors.lightRedPrime, textColor: SEColors.white, onPressed: () {}),
                  const SizedBox(height: 30),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
