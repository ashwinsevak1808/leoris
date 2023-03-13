import 'package:flutter/material.dart';
import 'package:leories/view/screens/auth/forget_password.dart';
import 'package:leories/view/screens/auth/otp.dart';
import 'package:leories/view/screens/auth/register.dart';
import 'package:leories/view/screens/browse.dart';
import 'package:leories/view/screens/home.dart';
import 'package:leories/view/screens/modules/account/user_account.dart';
import 'package:leories/view/screens/modules/music_liberary/music_playing_module.dart';
import 'package:leories/view/screens/music_liberary.dart';

import '../screens/auth/login.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => const LeoLogin(),
    '/music-player': (BuildContext context) => const Browse(),
    '/broswe-music': (BuildContext context) => const MusicLiberary(),
    '/radio': (BuildContext context) => const Browse(),

    // Auth Screens
    '/login': (BuildContext context) => const LeoLogin(),
    '/register': (BuildContext context) => const LeoRegister(),
    '/otp': (BuildContext context) => const LeoOTP(),
    '/forget-password': (BuildContext context) => const LeoForgetPassword(),
  };
}

var screenIndex = const [
  Home(),
  Browse(),
  MusicLiberary(),
  MusicPlaying(),
  UserAccount(),
];
