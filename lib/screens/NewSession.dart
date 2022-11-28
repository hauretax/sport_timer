import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:sport_timer/elements/Sticker.dart';
import 'package:sport_timer/elements/atoms/DoubleText.dart';
import 'package:sport_timer/screens/TimerScreen.dart';
import 'package:sport_timer/tools/Exercise.dart';
import 'package:sport_timer/tools/ExerciseL.dart';

import '../elements/atoms/SelectNbr.dart';

class NewSession extends StatefulWidget {
  const NewSession({super.key});

  @override
  State<NewSession> createState() => _NewSessionState();
}

class _NewSessionState extends State<NewSession> {
  var scdPerRound = TextEditingController(text: '0');
  var nbRound = TextEditingController(text: '0');
  var tmp = TextEditingController(text: '0');
  List<String> exs = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TimerScreen(
                    scdPerRound: int.parse(scdPerRound.text),
                    nbRound: int.parse(nbRound.text))));
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.play_arrow),
        ),
        body: Column(
          children: [
            Sticker(superNb: tmp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectNbr(
                  selectedNb: nbRound,
                ),
                SelectNbr(
                  selectedNb: scdPerRound,
                ),
              ],
            ),
            TextButton(
              child: Text('s'),
              onPressed: () {
                exs.add('cul');
                setState(() {});
              },
            ),
            ExerciseL(exs: exs,)
          ],
        ));
  }
}
