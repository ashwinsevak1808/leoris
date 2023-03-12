import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/viewmodal/provider/screenchange_prod.dart';
import 'package:provider/provider.dart';

customNavigationBar(BuildContext context) {
  final provider = Provider.of<NavigateToScreen>(context, listen: false);
  return Consumer<NavigateToScreen>(
    builder: (_, __, ___) {
      return BottomNavigationBar(
        onTap: (index) {
          provider.switchScreen(index);
        },
        items: bottomItems,
        currentIndex: provider.pageIndex,
        backgroundColor: SEColors.background,
        selectedItemColor: SEColors.lightBlue,
        unselectedItemColor: SEColors.text_grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
      );
    },
  );
}

var bottomItems = const [
  BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.equalizer,
      size: 25,
    ),
    icon: Icon(
      Icons.equalizer_outlined,
      size: 25,
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.public,
      size: 25,
    ),
    icon: Icon(
      Icons.public_outlined,
      size: 25,
    ),
    label: "Browse",
  ),
  BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.album,
      size: 25,
    ),
    icon: Icon(
      Icons.album_outlined,
      size: 25,
    ),
    label: "Playlist",
  ),
  BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.radio,
      size: 25,
    ),
    icon: Icon(
      Icons.radio_outlined,
      size: 25,
    ),
    label: "Radio",
  ),
  BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.account_circle,
      size: 25,
    ),
    icon: Icon(
      Icons.account_circle_outlined,
      size: 25,
    ),
    label: "Account",
  ),
];
