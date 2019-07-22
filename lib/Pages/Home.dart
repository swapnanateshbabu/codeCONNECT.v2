import 'package:code_connect_01/Pages/Feed.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final topBar = new AppBar(
    iconTheme: IconThemeData(color: Colors.black, size: 30.0),
    backgroundColor: Colors.amber,
    elevation: 1.0,
    title: SizedBox(
      height: 15.0,
      child: Image.asset("assets/codeCONNECT_logoname.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 14.0),
        child: Icon(
          Icons.account_circle,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.inbox,
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      bottomNavigationBar: BottomAppBar(
        elevation: 1.0,
        child: Container(
          height: 60.0,
          color: Colors.amber,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 12.0),
                child: new SizedBox(
                  height: 13,
                  child: Image.asset("assets/codeCONNECT_logoname.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/LogoOnly.png",
                    scale: 7.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Feed(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.calendar_today,
          color: Colors.black,
        ),
      ),
    );
  }
}
