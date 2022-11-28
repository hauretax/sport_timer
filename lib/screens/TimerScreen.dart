import 'package:flutter/material.dart';

import '../elements/CircleAnimation.dart';

class TimerScreen extends StatefulWidget {
  int scdPerRound;
  int nbRound;
  TimerScreen({super.key, required this.scdPerRound, required this.nbRound});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          //#todo: find way to give correcte space
          height: MediaQuery.of(context).size.height - 40,
          child:
              CircleAnimation(scd: widget.scdPerRound, round: widget.nbRound),
        ),
        TextButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          child: const Text('asd'),
        ),
      ],
    );
  }
}
