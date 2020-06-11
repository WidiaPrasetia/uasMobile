import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;

class Kalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Kalender"),
      ),
      body:  new Container(
      child: new Center(
        child: new Column(children: <Widget>[
          new Text(
            "Info",
            style: new TextStyle(fontSize: 30.0),
          ),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Image.asset(
            "img/info.png",
            width: 200.0,
          )
        ]),
      ),
    ) 
    );
    
  }
}
