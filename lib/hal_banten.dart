import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;

class Banten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Banten", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image.asset("img/banten.jpg", width: 200.0,)
          ]
        ),
      ),
    );
  }
}