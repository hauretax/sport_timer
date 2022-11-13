import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sport_timer/tools/NumericalRangeFormatter.dart';

class SelectNbr extends StatefulWidget {
  TextEditingController selectedNb;
  SelectNbr({super.key, required this.selectedNb});

  @override
  State<SelectNbr> createState() => _SelectNbrState();
}

class _SelectNbrState extends State<SelectNbr> {
  

  @override
  Widget build(BuildContext context) {
    final tmp = widget.selectedNb;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: IconButton(
                onPressed: () {
                  if (tmp.text == "") {
                    tmp.text = '0';
                  } else if (tmp.text == "0") {
                  } else {
                    tmp.text = (int.parse(tmp.text) - 1).toString();
                  }
                },
                icon: const Icon(Icons.remove))),
        SizedBox(
            width: 42,
            height: 42,
            child: Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 1)),
              ),
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  NumericalRangeFormatter(min: 0, max: 99),
                ],
                decoration: const InputDecoration(border: InputBorder.none),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(
                  fontSize: 22,
                  height: 43,
                ),
                keyboardType: TextInputType.number,
                controller: tmp,
              ),
            )),
        Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: IconButton(
                onPressed: () {
                  if (tmp.text == "") {
                    tmp.text = '1';
                  } else if (tmp.text == "99") {
                  } else {
                    tmp.text = (int.parse(tmp.text) + 1).toString();
                  }
                },
                icon: const Icon(Icons.add))),
      ],
    );
  }
}
