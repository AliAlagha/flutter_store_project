import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterstoreproject/screens/customer_home_page.dart';
import 'package:flutterstoreproject/screens/sign_in_page.dart';
import 'package:flutterstoreproject/screens/trader_home_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => new SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _username, _email, _password, _type;

  SignUpPageState() {}

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() async {
        _isLoading = true;
        form.save();
        
        // Sign up here

        _showSnackBar("Please Wait ...");

        final _auth = FirebaseAuth.instance;
        try {
          final newUser = await _auth.createUserWithEmailAndPassword(
              email: _email, password: _password);
          if (newUser != null) {

            Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => ClientHomePage()),
            );

          }
        }
        catch (e)
        {
          _showSnackBar(e);
        }

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;

    var userForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Adobe XD layer: 'Login' (text)
        new Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        ),
        SizedBox(
          width: 300.0,
          child: Text(
            'Signup',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 30,
              color: const Color(0xff323232),
              letterSpacing: -0.7235293006896972,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: new TextFormField(
                  onSaved: (val) => _username = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _email = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  obscureText: true,
                  onSaved: (val) => _password = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _type = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type',
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
            height: 60,
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Sign Up'),
              onPressed: _submit,
            )),
        // Adobe XD layer: 'Already have an acoo' (text)
        new GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SignInPage(),
                    ));
          },
          child: new SizedBox(
            width: 246.0,
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 14,
                  color: const Color(0xffa3a3a3),
                  letterSpacing: -0.3376470069885254,
                ),
                children: [
                  TextSpan(
                    text: 'Already have an acoount ? ',
                  ),
                  TextSpan(
                    text: '  ',
                    style: TextStyle(
                      color: const Color(0xff404040),
                    ),
                  ),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: const Color(0xff3c3c3c),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sign Up"),
        backgroundColor: Colors.blue,
      ),
      key: scaffoldKey,
      body: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          userForm,
        ],
      ),
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }
}
