import 'package:flutter/material.dart';
import 'package:todo_app/pages/Home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
          primarySwatch: Colors.yellow,
          appBarTheme: AppBarTheme(
           backgroundColor: Colors.yellow,
          )
      ),
      home: Homepage()
    );
  }
}