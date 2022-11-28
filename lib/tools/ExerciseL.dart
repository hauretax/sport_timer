import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Exercise.dart';

class ExerciseL extends StatefulWidget {
  List<String> exs = [];
  ExerciseL({
    super.key,
    required this.exs,
  });

  @override
  State<ExerciseL> createState() => _ExerciseLState();
}

class _ExerciseLState extends State<ExerciseL> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: widget.exs.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(widget.exs[index]);
          }),
    );
  }
}
