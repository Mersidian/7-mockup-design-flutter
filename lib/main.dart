import 'package:flutter/material.dart';
import 'Views/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Play Station",
      theme: ThemeData(
        primaryColor: const Color(0xFF00439C),
      ),
      home: const HomePage(),
    );
  }
}