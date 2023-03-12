import 'package:flutter/material.dart';
import 'package:leories/view/widgets/global/search_bar.dart';
import 'package:leories/viewmodal/provider/screenchange_prod.dart';
import 'package:leories/view/utils/routes.dart';
import 'package:leories/view/widgets/global/app_bar.dart';
import 'package:leories/view/widgets/global/bottom_navigation_bar.dart';
import 'package:leories/view/widgets/global/darwer.dart';
import 'package:provider/provider.dart';

import '../../viewmodal/provider/search_bar_provider.dart';

class WidgetConnection extends StatelessWidget {
  const WidgetConnection({Key? key});

  @override
  Widget build(BuildContext context) {
    final searchBarProvider = Provider.of<SearchBarProvider>(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: customAppBar(context),
      bottomNavigationBar: customNavigationBar(context),
      body: Stack(
        children: [
          Consumer<NavigateToScreen>(
            builder: (context, value, child) {
              return screenIndex[value.pageIndex];
            },
          ),
          if (searchBarProvider.isSearchBarVisible)
            GestureDetector(
              onTap: () {
                searchBarProvider.toggleSearchBarVisibility();
                FocusScope.of(context).unfocus();
              },
              child: Container(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          if (searchBarProvider.isSearchBarVisible) const SearchBar(),
        ],
      ),
    );
  }
}
