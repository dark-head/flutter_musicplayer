import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:audio_handler/audio_handler.dart';
// import 'package:audio_service/audio_service.dart';
import 'package:musicplayer/UI/home/views/home_screen.dart';
import 'package:musicplayer/config/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Music Player',
//       theme: AppTheme.darkTheme,
//       home: const HomeScreen(),
//     ),
//   );
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AudioHandler audioHandler = await AudioService.init(
    builder: () => MyAudioHandler(),
    config: const AudioServiceConfig(),
  );

  runApp(MyApp(audioHandler: audioHandler));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required AudioHandler audioHandler})
      : _audioHandler = audioHandler;

  final AudioHandler _audioHandler;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [],
        child: MaterialApp(
          title: 'Music Player',
          theme: AppTheme.theme,
          home: const HomeScreen(),
        ));
  }
}
