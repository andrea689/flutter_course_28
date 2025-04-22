import 'package:flutter/material.dart';
import 'package:exercise_3/spotify_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: SpotifyPage());
  }
}
