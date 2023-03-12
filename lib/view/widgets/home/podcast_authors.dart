import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';

import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/home/podcastauth_card.dart';

import 'listenpod_card.dart';

class PodcastAuthor extends StatefulWidget {
  const PodcastAuthor({super.key});

  @override
  State<PodcastAuthor> createState() => _PodcastAuthorState();
}

class _PodcastAuthorState extends State<PodcastAuthor>
    with SingleTickerProviderStateMixin {
  // Initializing the Listen Podcast Tab Controller

  late final TabController _PodcastAuthorTabController;
  @override
  void initState() {
    // final provider = Provider.of(context)<TabControllerProvider>(context, listen:false);
    _PodcastAuthorTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Podcasts authors',
                style: MainTheme.lightTheme.textTheme.headlineLarge),
            const SizedBox(height: 16),
            TabBar(
                isScrollable: true,
                indicatorColor: Colors.transparent,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _PodcastAuthorTabController,
                labelPadding: EdgeInsets.only(right: 24),
                padding: EdgeInsets.zero,
                unselectedLabelColor: SEColors.textColor,
                labelColor: SEColors.lightBlue,
                tabs: const [
                  Tab(child: Text('Recent')),
                  Tab(child: Text('Most podcasts')),
                  Tab(child: Text('Most followed')),
                  Tab(child: Text('Most followed')),
                ]),
            const SizedBox(height: 20),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: TabBarView(
                  controller: _PodcastAuthorTabController,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          PodAuthCard(
                              avatar: 'assets/images/avatar1.png',
                              playlist: '1808',
                              singerName: 'Ashwin Sevak'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar2.png',
                              playlist: '1808',
                              singerName: 'Hrithik Hadawale'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar3.png',
                              playlist: '1808',
                              singerName: 'Prachi Jain'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                           PodAuthCard(
                              avatar: 'assets/images/avatar1.png',
                              playlist: '1808',
                              singerName: 'Ashwin Sevak'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar2.png',
                              playlist: '1808',
                              singerName: 'Hrithik Hadawale'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar3.png',
                              playlist: '1808',
                              singerName: 'Prachi Jain'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                           PodAuthCard(
                              avatar: 'assets/images/avatar1.png',
                              playlist: '1808',
                              singerName: 'Ashwin Sevak'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar2.png',
                              playlist: '1808',
                              singerName: 'Hrithik Hadawale'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar3.png',
                              playlist: '1808',
                              singerName: 'Prachi Jain'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                            PodAuthCard(
                              avatar: 'assets/images/avatar1.png',
                              playlist: '1808',
                              singerName: 'Ashwin Sevak'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar2.png',
                              playlist: '1808',
                              singerName: 'Hrithik Hadawale'),
                          PodAuthCard(
                              avatar: 'assets/images/avatar3.png',
                              playlist: '1808',
                              singerName: 'Prachi Jain'),
                        ],
                      ),
                    )
                  ]),
            ),
          ],
        ));
  }
}
