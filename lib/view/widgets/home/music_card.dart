import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';

class PJSlide extends StatelessWidget {
  const PJSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      height: 180,
      child: PageView.builder(
          itemCount: 10,
          itemBuilder: (ctx, card) {
            return Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 0),
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/BG.png'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
              child: Column(
                children: [
                  Text('About flow and our motivations', style: MainTheme.lightTheme.textTheme.displayMedium),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('18.08.1992', style: MainTheme.lightTheme.textTheme.labelSmall),
                              const SizedBox(width: 5),
                              const Icon(Icons.timelapse, color: SEColors.textColor, size: 13),
                              const SizedBox(width: 3),
                              Text('24:15:05', style: MainTheme.lightTheme.textTheme.labelSmall),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(children: [
                            const CircleAvatar(radius: 8, backgroundImage: AssetImage('assets/images/avatar.png')),
                            const SizedBox(width: 8),
                            Text('Ashwin Sevak', style: MainTheme.lightTheme.textTheme.bodySmall)
                          ]),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: SEColors.lightRed,
                            boxShadow: const [BoxShadow(color: SEColors.lightRed, blurRadius: 50, blurStyle: BlurStyle.normal, spreadRadius: 5)]),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow),
                          color: SEColors.white,
                          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(SEColors.lightRed), elevation: MaterialStatePropertyAll(10)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
