import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:leories/view/screens/modules/music_liberary/music_playing_module.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/music_liberary/music_tile.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:just_audio/just_audio.dart';

class MusicLiberaryModule extends StatefulWidget {
  const MusicLiberaryModule({super.key});

  @override
  State<MusicLiberaryModule> createState() => _MusicLiberaryModuleState();
}

class _MusicLiberaryModuleState extends State<MusicLiberaryModule> {
  // define Audio Query Plugin
  final OnAudioQuery _audioQuery = OnAudioQuery();
  final AudioPlayer audioPlayer = AudioPlayer();

  // define audio player

  @override
  void initState() {
    super.initState();

    requestPermission();
  }

  requestPermission() async {
    // Web platform don't support permissions methods.
    if (!kIsWeb) {
      bool permissionStatus = await _audioQuery.permissionsStatus();
      if (!permissionStatus) {
        await _audioQuery.permissionsRequest();
      }
      setState(() {});
    }
  }

  playSong(String songUri) async {
    String? uri = songUri;

    await audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(uri)));
    await audioPlayer.play();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(top: 16, left: 16), child: Text('Music Liberary', style: MainTheme.lightTheme.textTheme.labelMedium)),
          const SizedBox(height: 20),
          FutureBuilder<List<SongModel>>(
            future: _audioQuery.querySongs(sortType: SongSortType.DISPLAY_NAME, orderType: OrderType.ASC_OR_SMALLER, uriType: UriType.EXTERNAL, ignoreCase: true),
            builder: (context, item) {
              // Loading Content Indicator
              if (item.data == null) return const Center(child: CircularProgressIndicator());

              // No Songs Found
              if (item.data!.isEmpty) return Center(child: Text("Nothing found!", style: MainTheme.lightTheme.textTheme.labelMedium));

              // Showing The Songs
              return Wrap(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height - 286,
                            child: ListView.builder(
                                itemCount: item.data!.length,
                                itemBuilder: (_, index) {
                                  return MusicTile(
                                    id: item.data![index].id,
                                    title: item.data![index].title,
                                    subTitle: '${item.data![index].artist}',
                                    time: '${item.data![index].duration}',
                                  );
                                })),
                      ),
                    ],
                  ),
                  Positioned(
                      top: 0,
                      child: Container(
                        color: SEColors.lightDark,
                        width: double.infinity,
                        height: 70,
                        child: ListTile(
                          // onTap: () => ,
                          subtitle: Text(audioPlayer.audioSource.toString(), maxLines: 1, overflow: TextOverflow.ellipsis),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      audioPlayer.stop();
                                    },
                                    icon: const Icon(Icons.play_arrow)),
                                IconButton(
                                    onPressed: () {
                                      audioPlayer.seekToNext();
                                    },
                                    icon: const Icon(Icons.next_plan))
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
