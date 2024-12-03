import 'package:flutter/material.dart';
import 'package:todo_app/pages/todo_page.dart';
import 'package:todo_app/util/dialogue.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List lista = [
    ["make tutorial", false]
  ];

  final _controller = TextEditingController();

  void savebutto() {
    setState(() {
      lista.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
    _controller.clear();
  }

  void createNewtask() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialoguebox(
            controller1: _controller,
            onCancel: () => Navigator.of(context).pop(),
            onSave: savebutto,
          );
        });
  }

  void checkCheckbox(bool? value, int index) {
    setState(() {
      lista[index][1] = !lista[index][1];
    });
  }

  void deleteTask(int index) {
    setState(() {
      lista.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          title: Text("TO Do "),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewtask,
          child: Icon(Icons.add),
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Todolist(
              taskName: lista[index][0],
              taskCompleted: lista[index][1],
              onChanged: (value) => checkCheckbox(value, index),
              deletefunc: (context) => deleteTask(index),
            );
          },
        ));
  }
}
