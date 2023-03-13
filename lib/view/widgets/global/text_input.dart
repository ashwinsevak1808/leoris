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
class LeoInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType textInputType;
  final String hintText;
  final String labelText;
  String? Function(String?)? validator;
  bool securetext;
  Widget? iconButton;
  Widget? iconPrefix;

  LeoInputField({
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
          hintStyle: MainTheme.lightTheme.textTheme.labelSmall,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
              borderSide: BorderSide(width: 0.5, color: Color.fromRGBO(255, 255, 255, 0.15), style: BorderStyle.solid)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
              borderSide: BorderSide(width: 0.5, color: Color.fromRGBO(255, 255, 255, 0.15), style: BorderStyle.solid)),
          contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          suffixIcon: iconButton,
          prefixIcon: iconPrefix,
          iconColor: SEColors.textColor),
      keyboardType: textInputType,
      autofocus: false,
      obscureText: securetext,
      validator: validator,
    );
  }
}

// Custom OTP Field ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

class LeoOtpFormField extends StatefulWidget {
  final int otpLength;
  final double boxWidth;
  final double boxHeight;
  final Function(String)? onOtpEntered;
  final String? errorMessage;
  final bool autoFocus;

  const LeoOtpFormField({
    Key? key,
    required this.otpLength,
    required this.boxWidth,
    required this.boxHeight,
    this.onOtpEntered,
    this.errorMessage,
    this.autoFocus = true,
  }) : super(key: key);

  @override
  _LeoOtpFormFieldState createState() => _LeoOtpFormFieldState();
}

class _LeoOtpFormFieldState extends State<LeoOtpFormField> {
  late List<String> _otpValues;
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _textControllers;

  @override
  void initState() {
    super.initState();
    _otpValues = List.generate(widget.otpLength, (index) => "");
    _focusNodes = List.generate(widget.otpLength, (index) => FocusNode());
    _textControllers = List.generate(widget.otpLength, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in _textControllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        widget.otpLength,
        (index) => SizedBox(
          width: widget.boxWidth,
          height: widget.boxHeight,
          child: TextFormField(
            controller: _textControllers[index],
            autofocus: widget.autoFocus && index == 0,
            focusNode: _focusNodes[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20, color: SEColors.white, fontWeight: FontWeight.w500),
            onChanged: (value) {
              setState(() {
                _otpValues[index] = value;
              });
              if (value.isNotEmpty && index != widget.otpLength - 1) {
                _focusNodes[index + 1].requestFocus();
              }
              String otp = _otpValues.join("");
              if (otp.length == widget.otpLength) {
                widget.onOtpEntered?.call(otp);
              }
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: SEColors.primary,
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
                  borderSide: BorderSide(width: 1, color: SEColors.lightBlue, style: BorderStyle.solid)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
                  borderSide: BorderSide(width: 0.5, color: Color.fromRGBO(255, 255, 255, 0.15), style: BorderStyle.solid)),
              // counter: const SizedBox.shrink(),
              border: const OutlineInputBorder(),
              errorText: widget.errorMessage,
            ),
          ),
        ),
      ),
    );
  }
}
