import 'package:flutter/material.dart';
import 'package:web/pages/homepage.dart';

void main() {
  runApp(const tApp());
}

class tApp extends StatelessWidget {
  const tApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '涩之律者的秘密小屋',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const tHomePage(),
    );
  }
}