import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/button.dart';
import 'package:leories/view/widgets/global/text_input.dart';

class LoginUser extends StatelessWidget {
  LoginUser({super.key});

  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        // color: Colors.transparent,
        child: Wrap(
          children: [
            Container(
                color: SEColors.primary,
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -20,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 147,
                          width: 147,
                          color: SEColors.primary,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      bottom: -60,
                      child: Container(
                        height: 164,
                        width: 140,
                        color: SEColors.white,
                      ),
                    )
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 5, color: SEColors.text_grey)],
                color: SEColors.white,
              ),
              height: MediaQuery.of(context).size.height - 200,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Back,', style: MainTheme.lightTheme.textTheme.bodyLarge),
                  const SizedBox(height: 10),
                  Text(
                    'Login to Continue...',
                    style: MainTheme.lightTheme.textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 30),
                  InputField(
                    controller: username,
                    label: 'Enter Your Name',
                    textInputType: TextInputType.name,
                    hintText: 'Enter Your Name',
                    labelText: 'Enter Your Name',
                  ),
                  const SizedBox(height: 30),
                  InputField(
                    controller: username,
                    label: 'Enter Your Password',
                    textInputType: TextInputType.name,
                    hintText: 'Enter Your Password',
                    labelText: 'Enter Your Password',
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [TextButton(onPressed: () {}, child: const Text('Create Account')), TextButton(onPressed: () {}, child: const Text('Forget Password?'))],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Button(
                    label: 'Login',
                    color: SEColors.primary,
                    textColor: SEColors.primary,
                  ),
                  const SizedBox(height: 30),
                  const Button(
                    label: 'Login as Organization',
                    color: SEColors.background,
                    textColor: SEColors.primary,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
