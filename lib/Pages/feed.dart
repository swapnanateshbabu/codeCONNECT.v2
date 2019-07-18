import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Feed extends StatefulWidget {
  const Feed({Key key, @required this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'codeCONNECT${widget.user.email}',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
