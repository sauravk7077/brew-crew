import 'package:flutter/material.dart';
import 'package:brew_crew/models/brew.dart';

class BrewTile extends StatelessWidget {
  final Brew brew;

  BrewTile({this.brew});

  Widget build(BuildContext ctx) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blue[brew.strength],
            ),
            title: Text(brew.name),
            subtitle: Text("Takes ${brew.sugars} sugars")),
      ),
    );
  }
}
