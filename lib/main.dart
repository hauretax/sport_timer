import 'package:flutter/material.dart';
import 'package:sport_timer/elements/atoms/Selectnbr.dart';
import 'package:sport_timer/elements/sticker.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'super chrono'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(a, b) {
    setState(() {
      _counter++;
    });
    print(a);
    print(b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            SetupForm(test: _incrementCounter),
            Sticker(),
  
          ],
        ),
      ),
    );
  }
}
