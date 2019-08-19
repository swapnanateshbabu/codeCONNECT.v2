import 'package:flutter/material.dart';
import 'package:code_connect_01/Pages/logIn.dart';

void main() {
  runApp(codeConnect());
}

class codeConnect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(
      ),
    );
  }
}
