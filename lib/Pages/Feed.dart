import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:code_connect_01/Pages/Project.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => new _FeedState();
}

class _FeedState extends State<Feed> {
  Future<List<User>> _getUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/ckTnyDEsKq?indent=2");
    var jsonData = json.decode(data.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u["index"], u["project"], u["address"], u["application"],
          u["date"], u["name"], u["phone"], u["email"], u["details"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: FutureBuilder(
            future: _getUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text('Loading...'),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Icon(
                          Icons.favorite_border
                        ),
                        title: Text(snapshot.data[index].project),
                        subtitle: Text(snapshot.data[index].name),
                        onTap: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) =>
                                  projectPage(snapshot.data[index]),
                            ),
                          );
                        },
                      );
                    });
              }
            }),
      ),
    );
  }
}

class User {
  final int index;
  final String project;
  final String address;
  final String application;
  final String date;
  final String name;
  final String phone;
  final String email;
  final String details;

  User(this.index, this.project, this.address, this.application, this.date,
      this.name, this.phone, this.email, this.details);
}
