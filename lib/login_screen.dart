import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? gender;
  double age = 10;
  bool hidePass = true;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      labelText: "User Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      labelText: "User Email",
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    obscureText: hidePass,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          icon: Icon(hidePass ? Icons.lock : Icons.lock_open),
                          onPressed: () {
                            hidePass = !hidePass;
                            setState(() {});
                          },
                        )),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField(
                    focusColor: Colors.transparent,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.menu),
                      labelText: "Gender",
                      enabledBorder: OutlineInputBorder(),
                    ),
                    items: [
                      DropdownMenuItem(value: "Male", child: Text("Male")),
                      DropdownMenuItem(value: "Female", child: Text("Female"))
                    ],
                    onChanged: ((val) {
                      gender = val;
                    }),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Age"),
                      Expanded(
                        child: Slider(
                            value: age,
                            min: 1,
                            max: 100,
                            onChanged: (val) {
                              print(val);
                              age = val;
                              setState(() {});
                            }),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            print("Name is ${nameController.text}");
                            print("Email is ${emailController.text}");
                            print("Pass is ${passwordController.text}");
                            print("Gender is $gender");
                            print("Age is $age");

                            if (nameController.text == "admin" &&
                                passwordController.text == "admin") {
                              // Navigator.of(context).pushAndRemoveUntil(
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           FaceBookClone(emailController.text)),
                              //   (_) => false,
                              // );
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('An error happened'),
                              ));
                            }
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18),
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have Account"),
                      TextButton(onPressed: () {}, child: Text("LogIn"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
