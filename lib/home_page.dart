import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('User Screen'),
        leading: Icon(Icons.home),
        actions: [
          IconButton(icon: const Icon(Icons.logout), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Icon(
                Icons.person_outline,
                size: 120,
                color: Colors.white,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Abdelmenam Tarek",
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Abdelmenam Tarek",
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "Edit user",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
