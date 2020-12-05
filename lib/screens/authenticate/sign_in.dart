import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          actions: [
            FlatButton.icon(
                onPressed: () {
                  widget.toggleView();
                },
                label: Text("Register"),
                icon: Icon(Icons.app_registration))
          ],
          backgroundColor: Colors.blue[400],
          elevation: 0,
          title: Text("Sign In"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                SizedBox(height: 20),
                RaisedButton(
                    child:
                        Text("Sign In", style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    color: Colors.green[400])
              ],
            ),
          ),
        ));
  }
}
