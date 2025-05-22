import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      
      title: 'Gym Coach App',
      theme: AppTheme.darkTheme,
      home: const HomePage(title: 'Gym Coach'),
      
    );
  }
}
