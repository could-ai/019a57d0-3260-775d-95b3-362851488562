import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AnimeWallpaperApp());
}

class AnimeWallpaperApp extends StatelessWidget {
  const AnimeWallpaperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Wallpaper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
