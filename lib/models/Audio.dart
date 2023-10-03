

class Audio {
  final String? name;
  final String url;
  final List<Audio> _audio = [];

  Audio({this.name, required this.url});

  List<Audio> get audio => _audio;
}
