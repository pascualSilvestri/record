import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:record/models/Audio.dart';




class BoxPlay extends StatelessWidget {

  final Function getPlaybackFn;
  final FlutterSoundPlayer mPlayer;
  final Audio? audioToPlay;

  const BoxPlay({super.key, required this.getPlaybackFn, required this.mPlayer, this.audioToPlay});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(3),
            height: 80,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFFAF0E6),
              border: Border.all(
                color: Colors.indigo,
                width: 3,
              ),
            ),
            child: Row(children: [
              ElevatedButton(
                onPressed: getPlaybackFn(audioToPlay),
                child: Text(mPlayer!.isPlaying ? 'Stop' : 'Play'),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(mPlayer!.isPlaying
                  ? 'Playback in progress'
                  : 'Player is stopped'),
            ]),
          );
  }
}