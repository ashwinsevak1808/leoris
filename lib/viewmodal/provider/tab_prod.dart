import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:leories/modal/tab_modal.dart';

class TabControllerProvider extends ChangeNotifier  {

  late List<TabData> _tabs;

  get tabs => _tabs;

  TabControllerProvider(){
    tabs;
  }

}

