import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const DailyRoutine());
}

class DailyRoutine extends StatelessWidget {
  const DailyRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Routine',
      home: HomeScreen(),
    );
  }
}


