import 'package:flutter/material.dart';
import 'package:code_connect_01/Pages/Feed.dart';

class projectPage extends StatelessWidget {
  final User user;
  projectPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(user.email),
        ),
      ),
    );
  }
}
