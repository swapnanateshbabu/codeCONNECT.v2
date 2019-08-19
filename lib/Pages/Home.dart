import 'package:code_connect_01/Pages/Feed.dart';
import 'package:code_connect_01/Pages/Notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:code_connect_01/Pages/Calendar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 30.0),
        backgroundColor: Colors.amber[400],
        elevation: 1.0,
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 15.0,
          child: Image.asset("assets/codeCONNECT_logoname.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 1.0),
            child: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calendar())),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 1.0),
            child: Icon(Icons.account_circle),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.inbox),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage())),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber[400],
        child: Container(
          height: MediaQuery.of(context).size.height * .09,
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
    );
  }
}
