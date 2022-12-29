import 'package:first_project/facebook_page.dart';
import 'package:flutter/material.dart';

class LoginScreenDemo extends StatefulWidget {
  const LoginScreenDemo({Key? key}) : super(key: key);

  @override
  State<LoginScreenDemo> createState() => _LoginScreenDemoState();
}

class _LoginScreenDemoState extends State<LoginScreenDemo> {
  double ageValue = 10;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String? gender;

  bool isHeden = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SignUp",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label: Text("User Name"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      label: Text("User Email"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passController,
                  obscureText: isHeden,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon:
                            Icon(isHeden ? Icons.lock : Icons.lock_open_sharp),
                        onPressed: () {
                          // condition ? true : false
                          isHeden = !isHeden;
                          print(isHeden);
                          setState(() {});
                        },
                      ),
                      label: Text("Password"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  value: gender,
                  focusColor: Colors.transparent,
                  items: [
                    DropdownMenuItem(
                      value: "Male",
                      child: Text("Male"),
                    ),
                    DropdownMenuItem(
                      value: "Female",
                      child: Text("FEMALE"),
                    ),
                  ],
                  onChanged: (value) {
                    gender = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      label: Text("Gender"),
                      prefixIcon:
                          Icon(gender == "Male" ? Icons.male : Icons.female),
                      border: OutlineInputBorder()),
                ),
                Slider(
                    value: ageValue,
                    min: 1,
                    max: 100,
                    onChanged: (value) {
                      ageValue = value;
                      setState(() {});
                    }),
                SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          // admin
                          // admin
                          if (nameController.text == "admin" &&
                              passController.text == "admin") {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FaceBookClone(emailController.text, 5)),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("User Name is no ok")));
                          }
                        },
                        child: Text("LogIn")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
