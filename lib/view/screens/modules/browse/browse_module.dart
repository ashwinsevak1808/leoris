import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/browse/catogoery_browse.dart';
import 'package:leories/view/widgets/global/text_input.dart';

class BrowseModule extends StatefulWidget {
  const BrowseModule({super.key});

  @override
  State<BrowseModule> createState() => _BrowseModuleState();
}

class _BrowseModuleState extends State<BrowseModule> with SingleTickerProviderStateMixin {
  final TextEditingController _search = TextEditingController();
  late TabController _browseTabController;

  @override
  void initState() {
    _browseTabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text('Browse', style: MainTheme.lightTheme.textTheme.displayLarge),
            const SizedBox(height: 20),
            InputField(
                controller: _search, label: 'search', textInputType: TextInputType.text, hintText: 'Search', labelText: 'search', iconButton: const Icon(Icons.search, color: SEColors.textColor)),
            const SizedBox(height: 20),
            TabBar(
                overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                labelPadding: const EdgeInsets.only(right: 26),
                indicatorColor: Colors.transparent,
                isScrollable: true,
                controller: _browseTabController,
                tabs: [
                  Tab(
                      height: 90,
                      child: Column(
                        children: const [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: SEColors.lightDark,
                            child: Icon(Icons.category_outlined),
                          ),
                          SizedBox(height: 12.0),
                          Text('Categories')
                        ],
                      )),
                  Tab(
                      height: 90,
                      child: Column(
                        children: const [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: SEColors.lightDark,
                            child: Icon(Icons.topic_outlined),
                          ),
                          SizedBox(height: 12.0),
                          Text('Topics')
                        ],
                      ))
                ]),
            SizedBox(height: 200, child: TabBarView(controller: _browseTabController, children: const [BrowseCategory(), Text('ashwin Jain')]))
          ],
        ),
      ),
    );
  }
}
