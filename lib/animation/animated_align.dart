import 'package:flutter/material.dart';

class AnimatedAlignTest extends StatefulWidget {
  const AnimatedAlignTest({super.key});

  @override
  State<AnimatedAlignTest> createState() => AnimatedAlignTestState();
}

class AnimatedAlignTestState extends State<AnimatedAlignTest> {
  bool selected = false;

  void _updateSize() {
    setState(() {
      selected = !selected;
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
              width: 250.0,
              height: 250.0,
              color: Colors.red,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topLeft : Alignment.bottomLeft,
                duration: const Duration(seconds: 5),
                curve: Curves.linear,
                child: const FlutterLogo(size: 50.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _updateSize,
              child: const Text('Change Akign'),
            ),
          ],
        ),
      ),
    );
  }
}
