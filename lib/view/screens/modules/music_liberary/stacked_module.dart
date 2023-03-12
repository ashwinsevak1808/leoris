import 'package:flutter/material.dart';

class StackedModule extends StatelessWidget {
  const StackedModule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
