import 'package:flutter/material.dart';
import 'package:sport_timer/elements/CircleAnimation.dart';
import 'package:sport_timer/elements/sticker.dart';
import 'package:sport_timer/screens/NewSession.dart';
import 'package:sport_timer/screens/setupForms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sport timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewSession()  ,
    );
  }
}
