// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  void Function()? onPressed;
  final String text;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.yellow[300],
      onPressed: widget.onPressed,
      child: Text(widget.text),
    );
  }
}
