import 'package:flutter/material.dart';
import 'package:flutterstoreproject/screens/sign_up_page.dart';

void main() => runApp(new MyApp());

final routes = {
  '/home': (BuildContext context) => new SignUpPage(),
  '/': (BuildContext context) => new SignUpPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sqflite App',
      theme: new ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}