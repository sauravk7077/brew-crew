import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
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
                label: Text("Sign In"),
                icon: Icon(Icons.login))
          ],
          backgroundColor: Colors.blue[400],
          elevation: 0,
          title: Text("Register"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(hintText: "Email"),
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                    obscureText: true,
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    }),
                SizedBox(height: 20),
                RaisedButton(
                    child:
                        Text("Register", style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    color: Colors.green[400])
              ],
            ),
          ),
        ));
  }
}
