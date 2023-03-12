import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../../utils/theme.dart';

class MusicTile extends StatelessWidget {
  final int id;
  final String title;
  final String subTitle;
  final String time;
  final void Function()? onPressed;

  const MusicTile({super.key, required this.id, required this.title, required this.subTitle, required this.time, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0), bottomLeft: Radius.circular(8.0)),
        color: SEColors.primary,
      ),
      child: Row(
        children: [
          QueryArtworkWidget(
            quality: 100,
            artworkWidth: 40,
            artworkHeight: 40,
            id: id,
            type: ArtworkType.AUDIO,
            nullArtworkWidget: const Icon(
              Icons.music_note,
              color: SEColors.lightGrey,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: MainTheme.lightTheme.textTheme.displaySmall, maxLines: 1, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 5),
                Text(subTitle, style: MainTheme.lightTheme.textTheme.labelSmall, maxLines: 1, overflow: TextOverflow.ellipsis)
              ],
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.play_arrow,
              color: SEColors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
