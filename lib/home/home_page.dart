import 'package:flutter/material.dart';
import '../features/workout/workout_page.dart';
import '../features/diet/diet_page.dart';
import '../features/progress/progress_page.dart';
import '../features/motivation/motivation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _isDarkMode = true;

  final List<Widget> _pages = const [
    WorkoutPage(),
    DietPage(),
    ProgressPage(),
    MotivationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode;
                });
              },
            ),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Workouts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Diet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart),
              label: 'Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.psychology),
              label: 'Motivation',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).colorScheme.onPrimary,
          unselectedItemColor: Theme.of(context).unselectedWidgetColor,
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          iconSize: 30,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 24),
          onTap: (index) => setState(() => _selectedIndex = index),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
