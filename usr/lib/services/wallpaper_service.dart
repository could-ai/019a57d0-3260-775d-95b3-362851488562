import 'package:flutter/material.dart';
import '../models/wallpaper.dart';

class WallpaperService {
  // Get current day of year (0-364)
  int getCurrentDayOfYear() {
    final now = DateTime.now();
    final firstDayOfYear = DateTime(now.year, 1, 1);
    final dayOfYear = now.difference(firstDayOfYear).inDays;
    return dayOfYear % 365;
  }

  // Generate wallpaper for a specific day
  Wallpaper getWallpaperForDay(int dayIndex) {
    final wallpapers = _getAllWallpapers();
    return wallpapers[dayIndex % wallpapers.length];
  }

  // Get all wallpapers featuring anime from your list
  List<Wallpaper> _getAllWallpapers() {
    return [
      // 5 Centimeters Per Second
      Wallpaper(
        id: 'cm_1',
        anime: '5 Centimeters Per Second',
        character: 'Takaki Tōno',
        description: 'A beautiful tale of love, distance, and the passage of time.',
        colors: [Color(0xFFFFB6C1), Color(0xFF87CEEB)],
        icon: Icons.train,
      ),
      Wallpaper(
        id: 'cm_2',
        anime: '5 Centimeters Per Second',
        character: 'Akari Shinohara',
        description: 'Cherry blossoms falling at 5 centimeters per second.',
        colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB)],
        icon: Icons.favorite,
      ),
      Wallpaper(
        id: 'cm_3',
        anime: '5 Centimeters Per Second',
        character: 'Kanae Sumida',
        description: 'Dreams and unrequited feelings under endless skies.',
        colors: [Color(0xFF87CEEB), Color(0xFF4682B4)],
        icon: Icons.cloud,
      ),

      // A Silent Voice
      Wallpaper(
        id: 'sv_1',
        anime: 'A Silent Voice',
        character: 'Shōya Ishida',
        description: 'A story of redemption, forgiveness, and finding your voice.',
        colors: [Color(0xFF87CEEB), Color(0xFF9370DB)],
        icon: Icons.sign_language,
      ),
      Wallpaper(
        id: 'sv_2',
        anime: 'A Silent Voice',
        character: 'Shōko Nishimiya',
        description: 'Communication beyond words, connection through understanding.',
        colors: [Color(0xFFB0E0E6), Color(0xFFFFB6C1)],
        icon: Icons.hearing,
      ),
      Wallpaper(
        id: 'sv_3',
        anime: 'A Silent Voice',
        character: 'Tomohiro Nagatsuka',
        description: 'The power of friendship and second chances.',
        colors: [Color(0xFF90EE90), Color(0xFF87CEEB)],
        icon: Icons.people,
      ),

      // Your Name
      Wallpaper(
        id: 'yn_1',
        anime: 'Your Name',
        character: 'Mitsuha Miyamizu',
        description: 'A cosmic connection that transcends time and space.',
        colors: [Color(0xFFFF6B9D), Color(0xFFC154C1)],
        icon: Icons.star,
      ),
      Wallpaper(
        id: 'yn_2',
        anime: 'Your Name',
        character: 'Taki Tachibana',
        description: 'Searching for someone you have never met.',
        colors: [Color(0xFF4A90E2), Color(0xFF9013FE)],
        icon: Icons.location_on,
      ),
      Wallpaper(
        id: 'yn_3',
        anime: 'Your Name',
        character: 'Comet Tiamat',
        description: 'When destiny writes the story in the stars.',
        colors: [Color(0xFF0F2027), Color(0xFF2C5364)],
        icon: Icons.nightlight,
      ),

      // Garden of Words
      Wallpaper(
        id: 'gw_1',
        anime: 'The Garden of Words',
        character: 'Takao Akizuki',
        description: 'Rainy day encounters in a secret garden.',
        colors: [Color(0xFF00C853), Color(0xFF64DD17)],
        icon: Icons.umbrella,
      ),
      Wallpaper(
        id: 'gw_2',
        anime: 'The Garden of Words',
        character: 'Yukari Yukino',
        description: 'Finding solace in the rain and unexpected companionship.',
        colors: [Color(0xFF00695C), Color(0xFF00897B)],
        icon: Icons.water_drop,
      ),
      Wallpaper(
        id: 'gw_3',
        anime: 'The Garden of Words',
        character: 'The Garden',
        description: 'A place where two souls meet on rainy mornings.',
        colors: [Color(0xFF1B5E20), Color(0xFF43A047)],
        icon: Icons.park,
      ),

      // Weathering With You
      Wallpaper(
        id: 'wy_1',
        anime: 'Weathering With You',
        character: 'Hodaka Morishima',
        description: 'Running away to Tokyo and finding a sunshine girl.',
        colors: [Color(0xFF00BCD4), Color(0xFF2196F3)],
        icon: Icons.wb_sunny,
      ),
      Wallpaper(
        id: 'wy_2',
        anime: 'Weathering With You',
        character: 'Hina Amano',
        description: 'The girl who can control the weather.',
        colors: [Color(0xFFFFC107), Color(0xFFFF9800)],
        icon: Icons.cloud_queue,
      ),
      Wallpaper(
        id: 'wy_3',
        anime: 'Weathering With You',
        character: 'Tokyo Skyline',
        description: 'A city between rain and sunshine.',
        colors: [Color(0xFF1A237E), Color(0xFF283593)],
        icon: Icons.location_city,
      ),

      // I Want to Eat Your Pancreas
      Wallpaper(
        id: 'pc_1',
        anime: 'I Want to Eat Your Pancreas',
        character: 'Sakura Yamauchi',
        description: 'Living each day to its fullest.',
        colors: [Color(0xFFFF80AB), Color(0xFFFF4081)],
        icon: Icons.favorite_border,
      ),
      Wallpaper(
        id: 'pc_2',
        anime: 'I Want to Eat Your Pancreas',
        character: 'Haruki Shiga',
        description: 'A story that will touch your heart and soul.',
        colors: [Color(0xFF7986CB), Color(0xFF5C6BC0)],
        icon: Icons.menu_book,
      ),
      Wallpaper(
        id: 'pc_3',
        anime: 'I Want to Eat Your Pancreas',
        character: 'Cherry Blossoms',
        description: 'Cherishing every moment together.',
        colors: [Color(0xFFFCE4EC), Color(0xFFF8BBD0)],
        icon: Icons.local_florist,
      ),
    ];
  }
}
