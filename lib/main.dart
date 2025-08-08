import 'package:flutter/material.dart';
import 'package:flutterapp/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
      theme: ThemeData(primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(elevation: 0, color: Colors.yellow),
      ),
    );
  }
}
