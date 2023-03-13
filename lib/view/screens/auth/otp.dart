import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/button.dart';
import 'package:leories/view/widgets/global/text_input.dart';

class LeoOTP extends StatefulWidget {
  const LeoOTP({super.key});

  @override
  State<LeoOTP> createState() => _LeoOTPState();
}

class _LeoOTPState extends State<LeoOTP> {
  // Input field Controllers
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(bottom: 50, right: 30),
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/loginbg.png'), fit: BoxFit.cover)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  const Text('Enter OTP', style: TextStyle(fontSize: 32, color: SEColors.white, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Text('Enter ONE TIME PASSWORD, that we have sent you on your regsiterd email!', style: MainTheme.lightTheme.textTheme.labelMedium),
                  const SizedBox(height: 30),
                  const LeoOtpFormField(otpLength: 4, boxWidth: 55, boxHeight: 55),
                ],
              ),
              Column(
                children: [
                  LeoButton(label: 'Register', color: SEColors.lightBlue, splashColor: SEColors.lighBluePrime, textColor: SEColors.white, onPressed: () {}),
                  const SizedBox(height: 16),
                  LeoLink(linkName: 'Already have an Account?', onTap: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
