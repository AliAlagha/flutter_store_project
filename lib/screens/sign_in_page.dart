import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterstoreproject/screens/customer_home_page.dart';
import 'package:flutterstoreproject/screens/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  @override
  SignInPageState createState() => new SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _username, _email, _password;

  SignInPageState() {
  }

  void _attemptLogin() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() async {
        _isLoading = true;
        form.save();

        // Login here

        _showSnackBar("Please Wait ...");

        final _auth = FirebaseAuth.instance;
        try {
          final newUser = await _auth.signInWithEmailAndPassword(
              email: _email, password: _password);

          if (newUser != null) {
            //successfully login
            //navigate the user to main page

            Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => ClientHomePage()),
            );

          }
        } catch (e) {
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
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              // Adobe XD layer: 'Login' (text)
              new Padding(
                padding: const EdgeInsets.all(20.0)
              ),
              SizedBox(
                width: 300.0,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 30,
                    color: const Color(0xff323232),
                    letterSpacing: -0.7235293006896972,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
               new Padding(
    padding: const EdgeInsets.all(10.0)
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
              child: Text('Log In'),
              onPressed: _attemptLogin,
            )),
        // Adobe XD layer: 'Don’t have an acooun' (text)
        // Adobe XD layer: 'Don’t have an acooun' (text)
        new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            },
            child: new SizedBox(
              width: 240.0,
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
                      text: 'Don’t have an acoount ? ',
                    ),
                    TextSpan(
                      text: '  ',
                      style: TextStyle(
                        color: const Color(0xff404040),
                      ),
                    ),
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: const Color(0xff3c3c3c),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ))
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sign In"),
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
