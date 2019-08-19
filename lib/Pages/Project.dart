import 'package:flutter/material.dart';
import 'package:code_connect_01/Pages/Feed.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:code_connect_01/Pages/Notifications.dart';
import 'package:code_connect_01/Pages/Home.dart';

class projectPage extends StatelessWidget {
  final User user;
  projectPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 30.0),
        backgroundColor: Colors.amber[400],
        elevation: 1.0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 150.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: FlatButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
                child: Image.asset("assets/codeCONNECT_logoname.png"),
              ),
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
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(40.7128, -74.0060),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 65,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .592,
                    color: Colors.red,
                  )),
              Expanded(
                  flex: 35,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .592,
                    color: Colors.pink,
                  )),
            ],
          )
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
    );
  }
}
