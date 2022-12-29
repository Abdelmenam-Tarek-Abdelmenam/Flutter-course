import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AgeCalc extends StatefulWidget {
  AgeCalc({Key? key}) : super(key: key);

  @override
  State<AgeCalc> createState() => _AgeCalcState();
}

class _AgeCalcState extends State<AgeCalc> {
  String? date;
  String? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // date == null ? "--" : date
                    children: [Text("Date : "), Text(date ?? "--")]),
              ),
              SizedBox(height: 10),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Age : "),
                    Text(age ?? "__"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () async {
                  DateTime? value = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(3000));

                  if (value != null) {
                    date = DateFormat("dd-MM-yyyy").format(value);
                    age = calculateAge(value);
                    setState(() {});
                  }
                },
                child: Container(
                  height: 30,
                  width: 140,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Pick Date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String calculateAge(DateTime birthDay) {
    DateTime now = DateTime.now();
    Duration diff = now.difference(birthDay);
    return [
      diff.inDays ~/ 365.25, // years
      (diff.inDays % 365.25).floor(), // days
      diff.inHours % 24, // hours
      diff.inMinutes % 60, // minutes
      diff.inSeconds % 60 // seconds
    ].map((seg) {
      return seg.toString().padLeft(2, '0');
    }).join(' - ');
  }
}
