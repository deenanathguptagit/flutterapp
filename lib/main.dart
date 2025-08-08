import 'package:flutter/material.dart';
import 'package:flutterapp/pages/first_page.dart';
import 'package:flutterapp/pages/home_page.dart';
import 'package:flutterapp/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/homePage': (context) => HomePage(),
        '/settingsPage': (context) => SettingPage(),
      },
    );
  }
}
