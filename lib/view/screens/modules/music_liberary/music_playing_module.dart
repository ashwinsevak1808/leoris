import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/app_bar.dart';

class MusicPlaying extends StatefulWidget {
  const MusicPlaying({super.key});

  @override
  State<MusicPlaying> createState() => _MusicPlayingState();
}

class _MusicPlayingState extends State<MusicPlaying> {
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    audioPlayer.playerStateStream.listen((event) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/musicPlaying.png'), fit: BoxFit.cover),
                      gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [SEColors.primary, SEColors.background, SEColors.black12])),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 60),
                        Text('About flow and our motivations', style: MainTheme.lightTheme.textTheme.displayMedium, textAlign: TextAlign.center),
                        const SizedBox(height: 12),
                        Text('About flow and our motivations', style: MainTheme.lightTheme.textTheme.labelSmall),
                        const SizedBox(height: 28),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.skip_previous, color: SEColors.white, size: 35)),
                            const SizedBox(width: 20),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: SEColors.lightRed,
                                  boxShadow: const [BoxShadow(color: SEColors.lightRed, blurRadius: 50, blurStyle: BlurStyle.normal, spreadRadius: 5)]),
                              child: IconButton(
                                  onPressed: () async {
                                    if (isPlaying) {
                                      await audioPlayer.pause();
                                    } else {
                                      await audioPlayer.play();
                                    }
                                  },
                                  icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                                  color: SEColors.white,
                                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(SEColors.lightRed), elevation: MaterialStatePropertyAll(10))),
                            ),
                            const SizedBox(width: 20),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.skip_next, color: SEColors.white, size: 35))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 375,
                  decoration: const BoxDecoration(color: SEColors.primary, borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(0), topEnd: Radius.circular(0))),
                  child: Column(
                    children: [
                      Slider(min: 0, max: duration.inSeconds.toDouble(), value: position.inSeconds.toDouble(), onChanged: (value) async {}),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text(position.toString(), style: MainTheme.lightTheme.textTheme.labelSmall), Text('$duration - $position', style: MainTheme.lightTheme.textTheme.labelSmall)],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
              Padding(padding: const EdgeInsets.all(10), child: IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
              Padding(
                padding: const EdgeInsets.all(10),
                child: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
