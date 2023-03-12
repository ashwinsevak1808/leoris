import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/widgets/home/listen_podcasts.dart';

import 'package:leories/view/widgets/home/music_card.dart';
import 'package:leories/view/widgets/home/podcast_authors.dart';

class HomeModule extends StatelessWidget {
  const HomeModule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              gradient: LinearGradient(colors: [SEColors.primary, SEColors.secoundry], begin: Alignment.bottomLeft, end: Alignment.topLeft),
            ),
            child: const Center(child: PJSlide()),
          ),
          const ListenPodcast(),
          const PodcastAuthor(),
    
        ],
      ),
    );
  }
}
