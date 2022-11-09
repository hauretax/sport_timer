import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'atoms/Selectnbr.dart';

class Sticker extends StatefulWidget {
  const Sticker({super.key});

  @override
  State<Sticker> createState() => _StickerState();
}

class _StickerState extends State<Sticker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 125.0,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,0,0),
                  child: Text('Titre', style: TextStyle(fontSize: 30)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,4,6,0),
                  child: Align(
                      alignment: Alignment(1, -1),
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey,
                          ))),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,0,10,10),
              child: SelectNbr(),
            )
          ],
        ),
      ),
    );
  }
}
