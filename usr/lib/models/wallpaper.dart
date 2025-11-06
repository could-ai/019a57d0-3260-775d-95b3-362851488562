import 'package:flutter/material.dart';

class Wallpaper {
  final String id;
  final String anime;
  final String character;
  final String description;
  final List<Color> colors;
  final IconData icon;

  Wallpaper({
    required this.id,
    required this.anime,
    required this.character,
    required this.description,
    required this.colors,
    required this.icon,
  });
}
