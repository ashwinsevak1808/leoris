import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/viewmodal/provider/search_bar_provider.dart';
import 'package:provider/provider.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

PreferredSizeWidget customAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: SEColors.background,
    leading: const Text(''),
    actions: [
      Consumer<SearchBarProvider>(
        builder: (context, value, child) {
          return IconButton(
            onPressed: () {
              value.toggleSearchBarVisibility();
            },
            icon: const Icon(Icons.search),
          );
        },
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
    ],
  );
}
