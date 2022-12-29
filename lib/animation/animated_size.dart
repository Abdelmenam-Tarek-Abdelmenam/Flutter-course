import 'package:flutter/material.dart';

class AnimatedSizeTest extends StatefulWidget {
  const AnimatedSizeTest({super.key});

  @override
  State<AnimatedSizeTest> createState() => AnimatedSizeTestState();
}

class AnimatedSizeTestState extends State<AnimatedSizeTest> {
  double _size = 100.0;

  void _updateSize() {
    setState(() {
      _size = _size == 100 ? 250.0 : 100.0;
    });
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
            Container(
              color: Colors.amberAccent,
              child: AnimatedSize(
                duration: const Duration(seconds: 3),
                child: FlutterLogo(size: _size),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _updateSize,
              child: const Text('Change Size'),
            ),
          ],
        ),
      ),
    );
  }
}
