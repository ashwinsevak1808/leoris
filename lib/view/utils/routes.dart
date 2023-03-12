import 'package:flutter/material.dart';
import 'package:leories/view/screens/browse.dart';
import 'package:leories/view/screens/connection.dart';
import 'package:leories/view/screens/home.dart';
import 'package:leories/view/screens/modules/account/user_account.dart';
import 'package:leories/view/screens/modules/music_liberary/music_playing_module.dart';
import 'package:leories/view/screens/music_liberary.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => const Home(),
    '/music-player': (BuildContext context) => const Browse(),
    '/broswe-music': (BuildContext context) => const MusicLiberary(),
    '/radio': (BuildContext context) => const Browse(),
    '/radio': (BuildContext context) => const UserAccount(),
  };
}

var screenIndex = const [
  Home(),
  Browse(),
  MusicLiberary(),
  MusicPlaying(),
  UserAccount(),
];
