import 'package:flutter/foundation.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MusicPlayerServices extends OnAudioQuery {
  // The function will get all the songs from the files

  OnAudioQuery onAudioQuery = OnAudioQuery();

  getOnlySongs() {
    onAudioQuery.querySongs(sortType: SongSortType.DISPLAY_NAME, orderType: OrderType.ASC_OR_SMALLER, uriType: UriType.EXTERNAL, ignoreCase: true);
  }

  // The Function is used to grant permission for using media files from the source
  Future<bool> requestPermission() async {
    // Web platform don't support permissions methods.
    if (!kIsWeb) {
      bool permissionStatus = await onAudioQuery.permissionsStatus();
      if (!permissionStatus) {
        await onAudioQuery.permissionsRequest();
      }
      return true;
    }
    return false;
  }
}
