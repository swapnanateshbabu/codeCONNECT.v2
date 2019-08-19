import 'package:flutter/material.dart';

class LaunchPage extends StatefulWidget {
  @override
  _LaunchPageState createState() => new _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {

  @override
  void int() {
    // TODO: implement deactivate
    super.initState();
    Timer(Duration(seconds: 15),()=> ;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.pink),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 20,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 75.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("Assets/Albuquerque.jpg"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 11.0),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Hello',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Friend!',
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                      ),
                      Container(
                        alignment: Alignment(0, 0),
                        height: MediaQuery.of(context).size.height * .425,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.amberAccent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 65, right: 65),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'codeCONNECT',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      ' is a platform to connect community members and stakeholders to planning projects in their neighborhood and allow them to participate in the planning process via this app.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(300,0,2,15),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/cclogo.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LaunchPage extends StatefulWidget {
  @override
  _LaunchPageState createState() => new _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15),()=> return Home(),);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.pink),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 20,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 75.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("Assets/Albuquerque.jpg"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 11.0),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Hello',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Friend!',
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                      ),
                      Container(
                        alignment: Alignment(0, 0),
                        height: MediaQuery.of(context).size.height * .425,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.amberAccent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 65, right: 65),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'codeCONNECT',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                  ' is a platform to connect community members and stakeholders to planning projects in their neighborhood and allow them to participate in the planning process via this app.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(300,0,2,15),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/cclogo.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

