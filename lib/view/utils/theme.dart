import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainTheme {
  // Object is been create to run it at the initial
  MainTheme();

  // Light Theme Colors Scheme
  static final ThemeData lightTheme = ThemeData(
    splashColor: Colors.transparent,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          color: Colors.blue, // customize focus color
          width: 2.0,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          color: Colors.redAccent, // customize focus color
          width: 2.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.5), // customize border color
          width: 2.0,
        ),
      ),
    ),
    scaffoldBackgroundColor: SEColors.background,
    appBarTheme: const AppBarTheme(backgroundColor: SEColors.background, elevation: 0),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      // Final Theme Font Selected
      displayLarge: TextStyle(color: SEColors.white, fontFamily: 'Open Sans', fontSize: 48.0, fontWeight: FontWeight.bold, wordSpacing: -0.5),
      displayMedium: TextStyle(color: SEColors.white, fontFamily: 'Open Sans', fontSize: 24.0, wordSpacing: 0.75, fontWeight: FontWeight.w500),
      displaySmall: TextStyle(color: SEColors.white, fontFamily: 'Open Sans', fontSize: 12.0, fontWeight: FontWeight.w100, wordSpacing: -0.5),

      headlineLarge: TextStyle(color: SEColors.white, fontFamily: 'Open Sans', fontSize: 28.0, wordSpacing: 1.0, fontWeight: FontWeight.w500),

      bodySmall: TextStyle(color: SEColors.white, fontFamily: 'Open Sans', fontSize: 13.0, wordSpacing: 1, fontWeight: FontWeight.w100),

      titleSmall: TextStyle(color: SEColors.white, fontFamily: 'Open Sans', fontSize: 14.0, wordSpacing: 1, fontWeight: FontWeight.w500),

      labelMedium: TextStyle(color: SEColors.textColor, fontFamily: 'Open Sans', fontSize: 16.0, wordSpacing: 1, fontWeight: FontWeight.w500),
      labelSmall: TextStyle(color: SEColors.textColor, fontFamily: 'Open Sans', fontSize: 13.0, wordSpacing: 1, fontWeight: FontWeight.w400),
    ),
  );

  // Dark Theme Color cheme
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: SEColors.rasian_black,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: SEColors.background),
    ),
  );
}

// Theme Switch
class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences? sp;
  bool? _darkTheme;

  get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme = false;
    loadFromPrefs();
  }

  toggleTheme() {
    _darkTheme = _darkTheme != null ? !_darkTheme! : false;
    notifyListeners();
    savetoPrefs();
  }

  savetoPrefs() async {
    await initPrefs();
    await sp!.setBool(key, _darkTheme ?? false);
  }

  loadFromPrefs() async {
    await initPrefs();
    _darkTheme = sp!.getBool(key) ?? false;
    if (_darkTheme != null) {
      notifyListeners();
    }
  }

  initPrefs() async {
    sp ??= await SharedPreferences.getInstance();
    return sp;
  }
}
