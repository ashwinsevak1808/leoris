import 'package:flutter/material.dart';

class PasswordNotifier extends ChangeNotifier {
  bool _obscureText = true;

  get obscureText => _obscureText;

  PasswordNotifier();

  showPassword() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
