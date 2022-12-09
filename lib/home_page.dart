// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        title: Text("First Application"),
        actions: [
          IconButton(
              onPressed: () {
                print("dd");
              },
              icon: Icon(Icons.tag)),
          Icon(Icons.notification_important),
          Icon(Icons.settings),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          color: Colors.green,
                          child: Center(child: Text("Green")))),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Container(
                              width: double.infinity,
                              color: Colors.blue,
                              child: Text("Blue"))),
                      Expanded(
                          flex: 3,
                          child: Container(
                              width: double.infinity,
                              color: Colors.red,
                              child: Text("Orange")))
                    ],
                  )),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    color: Colors.purple,
                    width: double.infinity,
                    child: Center(child: Text("Purple")))),
          ],
        ),
      ),
    );
  }
}
