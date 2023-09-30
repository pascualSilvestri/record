import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:record/page/app.dart';
import 'package:record/page/home.dart';
import 'package:record/page/grabadora.dart';
import 'package:record/providers/AudioProvider.dart';
import 'package:record/providers/TextProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TextProvider()
        ),
        ChangeNotifierProvider(create: (_) => AudioListProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  SimpleRecorder(),
      ),
    );
  }
}

