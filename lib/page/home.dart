import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grabadora App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late FlutterSoundPlayer _player;
  late FlutterSoundRecorder _recorder;
  bool _mRecorderIsInited = false;

  @override
  void initState() {
    super.initState();
    _player = FlutterSoundPlayer();
    _recorder = FlutterSoundRecorder();
  }

  void startRecord() async {
    await _recorder.startRecorder(toFile: 'audio');
  }

  void stopRecord() async {
    await _recorder.stopRecorder();
  }  

  void play() async {
    await _player.startPlayer(
      fromURI: 'audio.aac', 
      whenFinished: () {
        setState(() {});
      }
    );
  }

  // Request microphone permission
  void requestPermission() async {
    await Permission.microphone.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: requestPermission,
              child: Text('Permisos')
            ),
            ElevatedButton(
              onPressed: startRecord,
              child: Text('Grabar')
            ),
            ElevatedButton(
              onPressed: stopRecord,
              child: Text('Detener')
            ),
            ElevatedButton(
              onPressed: play,
              child: Text('Reproducir')
            ),
          ],
        ),
      ),
    );
  }
}