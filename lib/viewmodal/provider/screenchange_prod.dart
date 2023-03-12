import 'package:flutter/material.dart';

class NavigateToScreen extends ChangeNotifier  {
  int pageIndex = 0;

  get pageScreens => pageIndex;

  NavigateToScreen();

  switchScreen(index){
    pageIndex = index;
    notifyListeners();
  }
}