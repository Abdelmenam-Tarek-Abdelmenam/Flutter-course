import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedCrossFadeTest extends StatefulWidget {
  const AnimatedCrossFadeTest({super.key});

  @override
  State<AnimatedCrossFadeTest> createState() => AnimatedCrossFadeTestState();
}

class AnimatedCrossFadeTestState extends State<AnimatedCrossFadeTest> {
  bool selected = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              duration: const Duration(seconds: 1),
              firstChild: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal, size: 100.0),
              secondChild: const FlutterLogo(
                  style: FlutterLogoStyle.stacked, size: 100.0),
              crossFadeState: selected
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _updateSize,
              child: const Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
