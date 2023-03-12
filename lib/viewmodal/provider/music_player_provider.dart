// import 'package:flutter/material.dart';
// import 'package:leories/viewmodal/services/music_player_service.dart';

// class MusicPlayerProvider extends ChangeNotifier {

//   MusicPlayerServices musicPlayerServices

//   MusicPlayerProvider();

//   playSong(String songUri) async {
//     String? uri = songUri;

//     await audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(uri)));
//     await audioPlayer.play();
//   }
// }


//              // Positioned(
//                   //     top: 0,
//                   //     child: Container(
//                   //       color: SEColors.lightDark,
//                   //       width: double.infinity,
//                   //       height: 70,
//                   //       child: ListTile(
//                   //         subtitle: Text(audioPlayer.audioSource.toString(), maxLines: 1, overflow: TextOverflow.ellipsis),
//                   //         trailing: SizedBox(
//                   //           width: 100,
//                   //           child: Row(
//                   //             children: [
//                   //               IconButton(
//                   //                   onPressed: () {
//                   //                     audioPlayer.stop();
//                   //                   },
//                   //                   icon: const Icon(Icons.play_arrow)),
//                   //               IconButton(
//                   //                   onPressed: () {
//                   //                     audioPlayer.seekToNext();
//                   //                   },
//                   //                   icon: const Icon(Icons.next_plan))
//                   //             ],
//                   //           ),
//                   //         ),
//                   //       ),
//                   //     )),