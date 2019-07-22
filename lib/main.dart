import 'package:flutter/material.dart';
import 'package:code_connect_01/Pages/logIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LoginPage(),
           );
  }
}
