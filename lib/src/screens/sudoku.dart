import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class SudokuScreen extends StatelessWidget {
  const SudokuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sudoku'),
      ),
      body: Center(
        //if platform is web or mobile, show youtube video
        child: (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS))
            ? Container()
            //if platform is desktop, show image
            : ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: YoutubePlayer(
                  controller: YoutubePlayerController.fromVideoId(
                    videoId: 'zxecO9Muo4Q',
                    autoPlay: false,
                    params: const YoutubePlayerParams(showFullscreenButton: true),
                  ),
                ),
              ),
      ),
    );
  }
}

class SudokuPrivacyPolicyScreen extends StatelessWidget {
  const SudokuPrivacyPolicyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sudoku Privacy Policy'),
      ),
      body: Center(
        child: Text(
          'Sudoku Privacy Policy',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
