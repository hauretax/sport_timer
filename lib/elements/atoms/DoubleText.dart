import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoubleText extends StatefulWidget {
  const DoubleText({super.key});

  @override
  State<DoubleText> createState() => _DoubleTextState();
}

class _DoubleTextState extends State<DoubleText> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Colors.blue,
          ),
          "abra",
        ),
        Text(
          style: TextStyle(
            fontSize: 22,
                        fontWeight: FontWeight.w200,

            color: Colors.white,
          ),
          "abra",
        )
      ],
    );
  }
}
