import 'package:flutter/material.dart';
import 'package:abdullah/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.comfortable,
      ),
      home: MyHomePage(title: 'New Title'),
    );
  }
}

