import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';

class BrowseCategory extends StatelessWidget {
  const BrowseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Categories', style: MainTheme.lightTheme.textTheme.labelMedium),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  height: 122,
                  decoration:
                      const BoxDecoration(color: SEColors.lightDark, borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16), bottomLeft: Radius.circular(16))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [SEColors.lightRed, SEColors.white]),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8), bottomLeft: Radius.circular(8))),
                      ),
                      Text('Art and entertainment', style: MainTheme.lightTheme.textTheme.bodySmall)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
