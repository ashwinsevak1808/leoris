import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';

class PodAuthCard extends StatelessWidget {
  final String avatar;
  final String playlist;
  final String singerName;

  const PodAuthCard({
    super.key,
    required this.avatar,
    required this.playlist,
    required this.singerName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7.5),
      width: 120,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(avatar),
          ),
          const SizedBox(height: 8),
          Text(singerName,
              style: MainTheme.lightTheme.textTheme.bodySmall),
          const SizedBox(height: 5),
          Text(
            'Podcasts: ${playlist}',
            style: MainTheme.lightTheme.textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
