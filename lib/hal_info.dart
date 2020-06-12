import 'package:flutter/material.dart';
import 'package:uas_app/kalender.dart';
import './main.dart' as HomeUtama;

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
         subtitle: new Text("Info seputar Hari Raya Hindu"),
         onTap: (){
           Navigator.canPop(context);
         }, 
        ),
        new ListTile(
         leading: new Icon(Icons.thumb_up),
         title: new Text("Info Hari Baik(Dewasa Ayu)"),
         subtitle: new Text("Menentukan hari baik untuk memulai suatu kegiatan"),
        //  dense: true,
         onTap: (){
           Navigator.canPop(context);
         },  
        ),
        new ListTile(
         leading: new Icon(Icons.notification_important),
         title: new Text("Info Piodalan"), 
         subtitle: new Text("Info piodalan seputaran Pura di Bali"),
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => Kalender()));
         }, 
        ),
      ], 
     ), 
    );
  }
}
