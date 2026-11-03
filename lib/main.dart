import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(const AlignmentDemoApp());

class AlignmentDemoApp extends StatelessWidget {
  const AlignmentDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00897B)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
