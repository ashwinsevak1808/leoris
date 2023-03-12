import 'package:flutter/material.dart';

class SearchBarProvider extends ChangeNotifier {
  bool _isSearchBarVisible = false;

  bool get isSearchBarVisible => _isSearchBarVisible;

  void toggleSearchBarVisibility() {
    _isSearchBarVisible = !_isSearchBarVisible;
    notifyListeners();
  }
}
