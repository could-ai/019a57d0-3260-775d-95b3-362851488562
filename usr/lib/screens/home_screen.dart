import 'package:flutter/material.dart';
import '../models/wallpaper.dart';
import '../services/wallpaper_service.dart';
import '../widgets/wallpaper_card.dart';
import 'wallpaper_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WallpaperService _wallpaperService = WallpaperService();
  late Wallpaper _todayWallpaper;
  int _currentDayIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadTodayWallpaper();
  }

  void _loadTodayWallpaper() {
    setState(() {
      _currentDayIndex = _wallpaperService.getCurrentDayOfYear();
      _todayWallpaper = _wallpaperService.getWallpaperForDay(_currentDayIndex);
    });
  }

  void _navigateToNextDay() {
    setState(() {
      _currentDayIndex = (_currentDayIndex + 1) % 365;
      _todayWallpaper = _wallpaperService.getWallpaperForDay(_currentDayIndex);
    });
  }

  void _navigateToPreviousDay() {
    setState(() {
      _currentDayIndex = (_currentDayIndex - 1 + 365) % 365;
      _todayWallpaper = _wallpaperService.getWallpaperForDay(_currentDayIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Anime Wallpaper',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade900,
              Colors.black,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.white.withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Day ${_currentDayIndex + 1} of 365',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _todayWallpaper.anime,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WallpaperDetailScreen(
                          wallpaper: _todayWallpaper,
                          dayNumber: _currentDayIndex + 1,
                        ),
                      ),
                    );
                  },
                  child: WallpaperCard(wallpaper: _todayWallpaper),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: _navigateToPreviousDay,
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Previous'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: _loadTodayWallpaper,
                      icon: const Icon(Icons.today),
                      label: const Text('Today'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: _navigateToNextDay,
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text('Next'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
