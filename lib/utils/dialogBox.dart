// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:todo/utils/button.dart';

class DialogBox extends StatefulWidget {
  final controller;
  Function()? onSave;
  Function()? onCancel;

  DialogBox(
      {super.key,
      this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: widget.controller,
              decoration: const InputDecoration(
                  hintText: 'Add task',
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: widget.onSave),
                const SizedBox(width: 8),
                MyButton(text: 'Cancel', onPressed: widget.onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
