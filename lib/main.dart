import 'package:flutter/material.dart';
import 'package:love_finity/src/features/screens/settings_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Love Finity',
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}
