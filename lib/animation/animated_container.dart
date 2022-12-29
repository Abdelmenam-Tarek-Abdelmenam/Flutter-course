import 'package:flutter/material.dart';

class AnimatedContainerTest extends StatefulWidget {
  const AnimatedContainerTest({super.key});

  @override
  State<AnimatedContainerTest> createState() => AnimatedContainerTestState();
}

class AnimatedContainerTestState extends State<AnimatedContainerTest> {
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
            AnimatedContainer(
              width: selected ? 200.0 : 100.0,
              height: selected ? 100.0 : 200.0,
              color: selected ? Colors.red : Colors.blue,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: const Duration(seconds: 2),
              // curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 75),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _updateSize,
              child: const Text('Change Container'),
            ),
          ],
        ),
      ),
    );
  }
}
