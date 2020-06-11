import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
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
         Calendar(
          isExpandable: true, 
         )
        ]),
      ),
    ) 
    );
    
  }
}
