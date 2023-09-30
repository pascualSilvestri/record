import 'package:flutter/material.dart';
import 'package:record/models/Audio.dart';

class AudioListProvider extends ChangeNotifier {
  final List<Audio> _audioList= [];

  void addAudio(Audio audio) {
    _audioList.add(audio);
    notifyListeners();
  }

  void removeAudio(Audio audio) {
    _audioList.remove(audio);
    notifyListeners();
  }

  void removeAll() {
    _audioList.clear();
    notifyListeners();
  }

  List<Audio> get getaudioList {
    return _audioList;
  }

  int get getaudioListLength {
    return _audioList.length;
  }

  Audio getAudio(int index) {
    return _audioList[index];
  }

  void updateAudio(Audio audio, int index) {
    _audioList[index] = audio;
    notifyListeners();
  }

  




}
