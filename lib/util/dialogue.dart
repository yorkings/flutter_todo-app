import 'package:flutter/material.dart';

class Dialoguebox extends StatelessWidget {
  const Dialoguebox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 200,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
              border:OutlineInputBorder(),
              hintText: "add a new task"
               ),
             ),
             Row(
              children: [
                
              ],
             )
          ],
        ),
      ),
    );
  }
}