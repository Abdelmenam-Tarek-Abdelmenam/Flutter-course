import 'package:flutter/material.dart';

class AnimatedOpacityTest extends StatefulWidget {
  const AnimatedOpacityTest({super.key});

  @override
  State<AnimatedOpacityTest> createState() => AnimatedOpacityTestState();
}

class AnimatedOpacityTestState extends State<AnimatedOpacityTest> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _changeOpacity,
              child: const Text('Fade Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
