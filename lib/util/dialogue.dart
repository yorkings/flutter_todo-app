import 'package:flutter/material.dart';
import 'package:todo_app/util/button.dart';

class Dialoguebox extends StatelessWidget {
  final controller1;
  VoidCallback onSave;
  VoidCallback onCancel;
   Dialoguebox({
    super.key, 
    required this.controller1,
    required this.onCancel,
    required this.onSave
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "add a new task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(text: 'save', onPressed: onSave),
                //cancel
                const SizedBox(
                  width: 8,
                ),
                MyButton(
                  text: 'cancel',
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
