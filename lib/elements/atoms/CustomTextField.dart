import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String hintText;
  TextInputType typeOfInput;
  TextEditingController ctrl;

  CustomTextField({
    super.key,
    this.hintText = '',
    this.typeOfInput = TextInputType.text,
    required this.ctrl,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(15.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: Colors.white, width: 3.0),
          ),
        ),

        controller: widget.ctrl,
        //(newValue) => widget.test(newValue!),
      ),
    );
  }
}
