import 'package:flutter/material.dart';

class MainBlocks extends StatelessWidget {
  const MainBlocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          children: [const Text('ashwin')],
        ));
  }
}
