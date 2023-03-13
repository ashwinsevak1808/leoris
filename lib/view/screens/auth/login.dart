import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/button.dart';
import 'package:leories/view/widgets/global/text_input.dart';

class LeoLogin extends StatefulWidget {
  const LeoLogin({super.key});

  @override
  State<LeoLogin> createState() => _LeoLoginState();
}

class _LeoLoginState extends State<LeoLogin> {
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
              const Text('Leories', style: TextStyle(fontSize: 48, color: SEColors.white, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('A place to better Music, Podcast & Radio', style: MainTheme.lightTheme.textTheme.labelMedium),
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
              LeoButton(label: 'Login', color: SEColors.lightBlue, splashColor: SEColors.lighBluePrime, textColor: SEColors.white, onPressed: () {}),
              const SizedBox(height: 16),
              LeoLink(
                  linkName: 'Forgot password?',
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  }),
              const SizedBox(height: 30),
              LeoButton(
                  label: 'Register new account',
                  color: SEColors.lightRed,
                  splashColor: SEColors.lightRedPrime,
                  textColor: SEColors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/forget-password');
                  }),
              const SizedBox(height: 20),
              LeoButton(label: 'Login with Facebook', color: SEColors.facebookColor, splashColor: SEColors.facebookColorPrime, textColor: SEColors.white, onPressed: () {}),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
