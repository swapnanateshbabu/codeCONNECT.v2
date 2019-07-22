import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'Home.dart';

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password, _username, _address, _zipcode;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.teal,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.account_circle,
                size: 190.0,
                color: Colors.white,
              ),
              new Container(
                child: const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'CREATE',
                        style: TextStyle(fontSize: 25.0, color: Colors.black38),
                      ),
                      TextSpan(
                        text: ' account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new Form(
                key: _formKey,
                child: new Theme(
                  data: ThemeData(
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.black38,
                        letterSpacing: 0.3,
                        fontSize: 15.0,
                      ),
                    ),
                    textSelectionColor: Colors.black38,
                  ),
                  child: new Container(
                    padding: const EdgeInsets.all(45.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 340.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.all(
                              new Radius.circular(30.0),
                            ),
                            border: Border.all(
                                color: Colors.black12,
                                width: 4.0,
                                style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: new TextFormField(
                              validator: (input) {
                                if (input.isEmpty) {
                                  return 'Provide an email';
                                }
                              },
                              onSaved: (input) => _email = input,
                              decoration: new InputDecoration(
                                hintText: 'Enter email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ),
                        new Container(
                          width: 340.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.all(
                              new Radius.circular(30.0),
                            ),
                            border: Border.all(
                                color: Colors.black12,
                                width: 4.0,
                                style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: new TextFormField(
                              validator: (input) {
                                if (input.length < 6) {
                                  return 'Your password needs to be atleast 6 characters';
                                }
                              },
                              onSaved: (input) => _password = input,
                              decoration: new InputDecoration(
                                hintText: 'Enter password',
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                          ),
                        ),
                        new Container(
                          width: 340.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.all(
                              new Radius.circular(30.0),
                            ),
                            border: Border.all(
                                color: Colors.black12,
                                width: 4.0,
                                style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: new TextFormField(
                              validator: (input) {
                                if (input.isEmpty) {
                                  return 'Please create username';
                                }
                              },
                              onSaved: (input) => _username = input,
                              decoration: new InputDecoration(
                                hintText: 'Enter Username',
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: false,
                            ),
                          ),
                        ),
                        new Container(
                          width: 340.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.all(
                              new Radius.circular(30.0),
                            ),
                            border: Border.all(
                                color: Colors.black12,
                                width: 4.0,
                                style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: new TextFormField(
                              validator: (input) {
                                if (input.isEmpty) {
                                  return 'Please enter your address';
                                }
                              },
                              onSaved: (input) => _address = input,
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter address',
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: false,
                            ),
                          ),
                        ),
                        new Container(
                          width: 340.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.all(
                              new Radius.circular(30.0),
                            ),
                            border: Border.all(
                                color: Colors.black12,
                                width: 4.0,
                                style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: new TextFormField(
                              validator: (input) {
                                if (input.isEmpty) {
                                  return 'Please enter your zipcode';
                                }
                              },
                              onSaved: (input) => _zipcode = input,
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter zipcode',
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: new Container(
                            child: MaterialButton(
                              color: Colors.amber,
                              height: 35.0,
                              minWidth: 20.0,
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.red,
                                size: 50.0,
                              ),
                              shape: new RoundedRectangleBorder(
                                side: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: signUp,
                            ),
                          ),
                        ),
                      ],
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

  void signUp() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        FirebaseUser user = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
