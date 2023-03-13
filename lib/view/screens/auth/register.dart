import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/button.dart';
import 'package:leories/view/widgets/global/text_input.dart';

class LeoRegister extends StatefulWidget {
  const LeoRegister({super.key});

  @override
  State<LeoRegister> createState() => _LeoRegisterState();
}

class _LeoRegisterState extends State<LeoRegister> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              const Text('Register to Leories', style: TextStyle(fontSize: 32, color: SEColors.white, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('New to Leories, register to listen to the best!', style: MainTheme.lightTheme.textTheme.labelMedium),
              const SizedBox(height: 30),
              LeoInputField(
                controller: emailController,
                label: 'Username',
                textInputType: TextInputType.name,
                hintText: 'Username',
                labelText: 'Username',
                iconPrefix: const Icon(
                  Icons.account_circle,
                  color: SEColors.textColor,
                ),
              ),
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
              const SizedBox(height: 30),
              LeoInputField(
                controller: emailController,
                label: 'Password',
                textInputType: TextInputType.visiblePassword,
                hintText: 'Password',
                labelText: 'Password',
                iconPrefix: const Icon(
                  Icons.key,
                  color: SEColors.textColor,
                ),
                iconButton: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: SEColors.textColor,
                    )),
              ),
              const SizedBox(height: 30),
              LeoInputField(
                controller: emailController,
                label: 'Confirm Password',
                textInputType: TextInputType.visiblePassword,
                hintText: 'Confirm Password',
                labelText: 'Confirm Password',
                iconPrefix: const Icon(
                  Icons.key,
                  color: SEColors.textColor,
                ),
                iconButton: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: SEColors.textColor,
                    )),
              ),
              const SizedBox(height: 30),
              LeoButton(label: 'Register', color: SEColors.lightBlue, splashColor: SEColors.lighBluePrime, textColor: SEColors.white, onPressed: () {}),
              const SizedBox(height: 16),
              LeoLink(linkName: 'Already have an Account?', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
