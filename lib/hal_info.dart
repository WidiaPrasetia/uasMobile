import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Info"),
      ),
      body: 
      new ListView(
      children: <Widget>[
        new ListTile(
         leading: new Icon(Icons.colorize),
         title: new Text("Info Hari Raya"),
         onTap: (){
           Navigator.canPop(context);
         }, 
        ),
        new ListTile(
         leading: new Icon(Icons.thumb_up),
         title: new Text("Info Hari Baik(Dewasa Ayu)"),
         onTap: (){
           Navigator.canPop(context);
         },  
        ),
        new ListTile(
         leading: new Icon(Icons.notification_important),
         title: new Text("Info Piodalan"), 
         onTap: (){
           Navigator.canPop(context);
         }, 
        ),
      ], 
     ), 
    );
  }
}
