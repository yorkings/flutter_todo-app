import 'package:flutter/material.dart';

class Todolist extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
    Todolist({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged
   }
   );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            //name
            Text(taskName,
            style: TextStyle(
              decoration:taskCompleted? TextDecoration.lineThrough:TextDecoration.none
            ),),
          ],
        ),
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
