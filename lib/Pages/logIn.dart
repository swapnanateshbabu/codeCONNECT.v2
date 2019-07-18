import 'package:code_connect_01/Pages/signUp.dart';
import 'package:flutter/material.dart';
import 'feed.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  String _emailid, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(
        milliseconds: 700,
      ),
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeIn,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.orange,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image(
                image: new AssetImage('assets/codeCONNECT.png'),
                height: _iconAnimation.value * 250,
                width: _iconAnimation.value * 250,
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
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new Container(
                            width: 340.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.all(
                                new Radius.circular(30.0),
                              ),
                              border: Border.all(
                                  color: Colors.black,
                                  width: 0.75,
                                  style: BorderStyle.solid),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: new TextFormField(
                                validator: (input) {
                                  if (input.isEmpty) {
                                    return 'Please provide correct email';
                                  }
                                },
                                onSaved: (input) => _emailid = input,
                                decoration: new InputDecoration(
                                  hintText: 'Enter email',
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new Container(
                            width: 340.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.all(
                                new Radius.circular(30.0),
                              ),
                              border: Border.all(
                                  color: Colors.black,
                                  width: 0.75,
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: new Container(
                            width: 340.0,
                            height: 40.0,
                            alignment: FractionalOffset.center,
                            decoration: new BoxDecoration(
                              color: Colors.teal,
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(30.0)),
                            ),
                            child: RaisedButton(
                              elevation: 0.0,
                              color: Colors.teal,
                              onPressed: signIn,
                              child: Text(
                                "Sign In",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: new GestureDetector(
                            onTap: NavigateTosignUp,
                            child: new Text(
                              'Dont have an account? Sign Up',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 14.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        FirebaseUser user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _emailid, password: _password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Feed(user: user)));
      } catch (e) {
        print(e.message);
      }
    }
  }

  void NavigateTosignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> signUpPage()));
  }
}
