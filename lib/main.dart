import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepage.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/signup.dart';

void maain() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home: const Login(),
  onGenerateRoute: (settings) {
    switch (settings.name) {
      case '/homepage':
        return MaterialPageRoute(builder: (context) => const Homepage());
      case '/signup':
        return MaterialPageRoute(builder: (context) => const Signup());
      default:
        return null;
    }
  },
);

    
  }
}
