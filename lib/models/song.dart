import 'models.dart';
import 'package:audio_service/audio_service.dart';

class Song {
  final String id;
  final Artist artist;
  final String title;
  final String imageUrl;
  final String? songPath;
  final String? songUrl;
  final bool isTrending;

  Song({
    required this.id,
    required this.artist,
    required this.title,
    required this.imageUrl,
    this.songPath,
    this.songUrl,
    this.isTrending = true,
  }) : assert(songUrl != null || songPath != null);

  factory Song.fromMediaItem(MediaItem mediaItem) {
    String? songPath, songUrl;

    if ((mediaItem.extras!['url'] as String).startsWith('asset:///')) {
      songPath =
          mediaItem.extras!['url'].toString().replaceFirst('asset:///', '');
    } else {
      songUrl = mediaItem.extras!['url'];
    }

    return Song(
      id: mediaItem.id,
      artist: Artist(id: '1', name: 'mediaItem.artist'),
      title: mediaItem.title,
      imageUrl: mediaItem.artUri!.toString(),
      songPath: songPath,
      songUrl: songUrl,
    );
  }

  MediaItem toMediaItem() => MediaItem(
        id: id,
        artist: artist.id,
        title: title,
        artUri: Uri.parse(imageUrl),
        extras: <String, dynamic>{
          'url': songPath != null ? 'asset:///$songPath' : songUrl,
        },
      );

  static List<Song> songs = [
    Song(
      id: '1',
      artist: Artist(id: '1', name: 'asdf'),
      title: 'Before The Day Is Over',
      songPath: 'assets/songs/Joji - Before The Day Is Over.mp3',
      imageUrl: 'https://unsplash.com/s/photos/image',
    ),
    Song(
      id: '2',
      artist: Artist(id: '2', name: 'qwer'),
      title: 'Let It Go',
      songPath:
          'assets/songs/Let It Go - James Bay (Lyrics) _musical_note_ ( 128kbps ).mp3',
      imageUrl: 'https://unsplash.com/s/photos/image',
    ),
    Song(
      id: '3',
      artist: Artist(id: '3', name: 'zxcv'),
      title: 'Bruses',
      songPath: 'assets/songs/Lewis Capaldi - Bruises (Lyrics) ( 128kbps ).mp3',
      imageUrl: 'https://unsplash.com/s/photos/image',
    ),
    Song(
      id: '4',
      artist: Artist(id: '4', name: 'yiuo'),
      title: 'PayPhone',
      songPath: 'assets/songs/Maroon 5 - Payphone (Lyrics) ( 128kbps ).mp3',
      imageUrl: 'https://unsplash.com/s/photos/image',
    ),
  ];
}
