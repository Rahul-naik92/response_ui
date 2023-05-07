import 'package:flutter/material.dart';
import 'package:response_ui/consts.dart';
import 'package:response_ui/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Constants.backgroundColor
      ),
      home: const MyLoginScreen(),
    );
  }
}

