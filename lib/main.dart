import 'package:flutter/material.dart';

void main() {
  runApp(const LazeezApp());
}

class LazeezApp extends StatelessWidget {
  const LazeezApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Lazeez App!'),
        ),
      ),
    );
  }
}
