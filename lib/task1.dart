import 'package:flutter/material.dart';

class Task1Page extends StatelessWidget {
  Task1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("EME-IH Borg - "),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                "images/fluuter1.png",
              ),
              Icon(Icons.favorite),
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              Positioned(top: 10, left: 15, child: Text("HELLO"))
            ],
          ),
        ),
      ),
    );
  }
}
