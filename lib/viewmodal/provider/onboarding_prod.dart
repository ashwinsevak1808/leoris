import 'package:flutter/material.dart';

class OnBoardingNotifier extends ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  OnBoardingNotifier();

  indexChanged(value) {
    _currentIndex = value;
    notifyListeners();
  }

  indexNext() {
    _currentIndex++;
    print('Prahci mam Your are awesome');
    notifyListeners();
  }
}
