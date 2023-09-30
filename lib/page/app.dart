import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:record/page/grabadora.dart';
import 'package:record/providers/TextProvider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final textProvider = context.watch<TextProvider>();

    final List<String> _textos = textProvider.getTextos;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      textProvider.addText('Hola');
                    },
                    child: const Text('Press')),
                ElevatedButton(
                    onPressed: () {
                      textProvider.removeAll();
                    },
                    child: const Text('Delete')),
              ],
            ),
            Column(
              children: [for (var texto in _textos) Text(texto)],
            )
          ],
        ),
      ),
    );
  }
}
