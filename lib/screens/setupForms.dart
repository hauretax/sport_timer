import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetupForm extends StatefulWidget {
  Function(String, String) test;

  SetupForm({
    Key? key,
    required this.test,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SetupForm();
}

class _SetupForm extends State<SetupForm> {
  final timing = TextEditingController();
  final reapeat = TextEditingController();

  @override
  void dispose() {
    timing.dispose();
    reapeat.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Material(
            elevation: 10,
            shadowColor: Colors.black,
            borderRadius: BorderRadius.circular(15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'who many seconde ?',
                contentPadding: EdgeInsets.all(10.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.white, width: 3.0),
                ),
              ),

              controller: timing,
              //(newValue) => widget.test(newValue!),
            ),
          ),
          TextField(
            decoration: const InputDecoration(hintText: 'who may time ?'),
            controller: reapeat,
          ),
          ElevatedButton(
            onPressed: () {
              widget.test(timing.text, reapeat.text);
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
