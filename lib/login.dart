// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Column(
          children: [
            Image.asset("lib/Images/download.jpg"),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "user name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.blue))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.blue))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "if you donot have Email",
                  style: TextStyle(fontSize: 15),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed("signip");
                  },
                  child: Text(
                    "sign up",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("homepage");
              },
              child: Text("login"),
            ),
          ],
        ),
      ),
    );
  }
}
