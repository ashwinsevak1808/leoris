import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';

import 'package:leories/view/utils/theme.dart';

import 'listenpod_card.dart';

class ListenPodcast extends StatefulWidget {
  const ListenPodcast({super.key});

  @override
  State<ListenPodcast> createState() => _ListenPodcastState();
}

class _ListenPodcastState extends State<ListenPodcast>
    with SingleTickerProviderStateMixin {
  // Initializing the Listen Podcast Tab Controller

  late final TabController _listenPodcastTabController;
  @override
  void initState() {
    // final provider = Provider.of(context)<TabControllerProvider>(context, listen:false);
    _listenPodcastTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Listen podcasts',
                style: MainTheme.lightTheme.textTheme.headlineLarge),
            const SizedBox(height: 16),
            TabBar(
                indicatorColor: Colors.transparent,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _listenPodcastTabController,
                labelPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                unselectedLabelColor: SEColors.textColor,
                labelColor: SEColors.lightBlue,
                tabs: const [
                  Tab(child: Text('Recent')),
                  Tab(child: Text('Topics')),
                  Tab(child: Text('Authors')),
                  Tab(child: Text('Episodes')),
                ]),
            const SizedBox(height: 20),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: TabBarView(
                  controller: _listenPodcastTabController,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          ListenPodCard(
                              image: 'assets/images/listnepod1.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak')
                        ],
                      ),
                    ),
                   SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          ListenPodCard(
                              image: 'assets/images/listnepod1.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak')
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          ListenPodCard(
                              image: 'assets/images/listnepod1.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak')
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          ListenPodCard(
                              image: 'assets/images/listnepod1.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak'),
                          ListenPodCard(
                              image: 'assets/images/listenpod2.png',
                              title: 'Miam isn’t the best place to live',
                              time: '24:15:05',
                              avatar: 'assets/images/avatar.png',
                              singerName: 'Ashwin Sevak')
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ));
  }
}
