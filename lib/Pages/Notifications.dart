import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 30.0),
        backgroundColor: Colors.teal[400],
        elevation: 1.0,
        title: SizedBox(
          height: 15.0,
          child: Image.asset("assets/codeCONNECT_logoname.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(Icons.account_circle),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Icon(Icons.inbox),
              onPressed: () => Navigator.pushNamed(
                  context, "package:code_connect_01/Pages/Notfications.dart"),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.teal[400],
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 160.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Row(
                            children: <Widget>[
                              Icon(Icons.account_box, color: Colors.white70),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Swapna Natesh Babu'),
                              ),
                            ],
                          ),
                          new Row(
                            children: <Widget>[
                              Icon(Icons.mail, color: Colors.white70),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('swapnaB@dpsdesign.org'),
                              ),
                            ],
                          ),
                          new Row(
                            children: <Widget>[
                              Icon(Icons.location_on, color: Colors.white70),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Albuquerque'),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: new OutlineButton(
                                shape: StadiumBorder(),
                                borderSide: BorderSide(color: Colors.white),
                                onPressed: () {},
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.edit,
                                      color: Colors.amber,
                                      size: 15.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment(0, .5),
                    height: .2,
                    color: Colors.amber,
                  )
                ],
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomAppBar(
          color: Colors.teal[400],
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
      ),
    );
  }
}
