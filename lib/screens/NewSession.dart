import 'package:flutter/material.dart';
import 'package:sport_timer/elements/Sticker.dart';
import 'package:sport_timer/screens/TimerScreen.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TimerScreen(
                    nbRound: int.parse(nbRound.text),
                    scdPerRound: int.parse(scdPerRound.text)),
              ),
            );
          },
          child: Text('start session'),
        ),
      ],
    ));
  }
}
