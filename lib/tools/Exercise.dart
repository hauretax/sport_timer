import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Exercice extends StatefulWidget {
  String title;
  int repeat;
  Exercice({
    super.key,
    required this.title,
    required this.repeat,
  });

  @override
  State<Exercice> createState() => _Exercice();
}

class _Exercice extends State<Exercice> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Text(widget.title),
    );
  }
}
