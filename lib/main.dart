import 'package:flutter/material.dart';
import 'package:flutter_basics/repository/screens/splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}


// Main App Widgets
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blinkit Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
    );
  }
}

