import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/widgets/global/text_input.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  TextEditingController searchGlobal = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.of(context).size.height;
    final double minHeight = kToolbarHeight + 58;
    final double contentHeight = searchGlobal.text.isEmpty ? minHeight : maxHeight;

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            height: Tween<double>(begin: minHeight, end: maxHeight).evaluate(_animation),
            color: const Color.fromARGB(213, 16, 18, 19),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: SEColors.lightDark),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InputField(
                      controller: searchGlobal,
                      label: 'search',
                      textInputType: TextInputType.text,
                      hintText: 'Search',
                      labelText: 'search',
                      iconButton: const Icon(Icons.search, color: SEColors.textColor),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void toggleAnimation() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }
}
