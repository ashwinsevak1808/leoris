import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';

// ignore: must_be_immutable
class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType textInputType;
  final String hintText;
  final String labelText;
  String? Function(String?)? validator;
  bool securetext;
  Widget? iconButton;
  Widget? iconPrefix;

  InputField({
    super.key,
    required this.controller,
    required this.label,
    required this.textInputType,
    required this.hintText,
    this.validator,
    this.securetext = false,
    this.iconButton,
    this.iconPrefix,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: MainTheme.lightTheme.textTheme.bodySmall,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: SEColors.primary,
          hintStyle: MainTheme.lightTheme.textTheme.bodySmall,
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0), borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0), borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          suffixIcon: iconButton,
          prefixIcon: iconPrefix,
          iconColor: SEColors.white),
      keyboardType: textInputType,
      autofocus: false,
      obscureText: securetext,
      validator: validator,
    );
  }
}

// Local Text Input

// ignore: must_be_immutable
class SETextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType textInputType;
  final String hintText;
  String? Function(String?)? validator;
  bool securetext;
  Widget? iconButton;

  SETextInput({
    super.key,
    required this.controller,
    required this.label,
    required this.textInputType,
    required this.hintText,
    this.validator,
    this.securetext = false,
    this.iconButton,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 2,
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: InputBorder.none, enabledBorder: InputBorder.none, hintText: hintText, contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0), suffixIcon: iconButton),
      keyboardType: textInputType,
      autofocus: false,
      obscureText: securetext,
    );
  }
}
