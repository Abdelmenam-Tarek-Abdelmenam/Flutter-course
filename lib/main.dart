import 'package:first_project/animation/animated_container.dart';
import 'package:first_project/animation/animated_cross_fade.dart';
import 'package:first_project/animation/animated_opacity.dart';
import 'package:first_project/animation/animated_size.dart';
import 'package:first_project/animation/hero.dart';
import 'package:flutter/material.dart';

import 'age_calculator.dart';
import 'animation/animated_align.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroTest(),
    );
  }
}
