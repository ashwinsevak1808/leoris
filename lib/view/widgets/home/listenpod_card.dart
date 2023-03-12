import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';

class ListenPodCard extends StatelessWidget {
  
  final String image;
  final String title;
  final String time;
  final String avatar;
  final String singerName; 

  const ListenPodCard({super.key, required this.image, required this.title, required this.time, required this.avatar, required this.singerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7.5),
      width: 150,
      height: 250,
      child: Column(
        children: [
          Image.asset(image),
          const SizedBox(height: 16),
          Text(title,
              style: MainTheme.lightTheme.textTheme.titleSmall),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.timelapse,
                            color: SEColors.textColor, size: 13),
                        const SizedBox(width: 3),
                        Text(time,
                            style: MainTheme
                                .lightTheme.textTheme.labelSmall),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Flexible(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           CircleAvatar(
                              radius: 8,
                              backgroundImage:
                                  AssetImage(avatar)),
                          const SizedBox(width: 8),
                          Text(singerName,
                              style: MainTheme
                                  .lightTheme.textTheme.bodySmall)
                        ]),
                  ),
                ]),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
               onTap: () {},
               child:  Container(
                height: 30,
                width:30,
                decoration: BoxDecoration(
                  color: SEColors.lightBlue,
                  borderRadius: BorderRadius.circular(100),
                   boxShadow: const [BoxShadow(color: SEColors.lightBlue, blurRadius: 4, blurStyle: BlurStyle.normal, spreadRadius: 1)],
                ),
                child: const Icon(Icons.play_arrow, color: SEColors.white, size: 12,)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
