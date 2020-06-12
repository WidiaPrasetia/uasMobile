import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './kalender.dart' as kalender;
import './hal_belanja.dart' as belanja;
import './test.dart' as hanyaTest;
import './main.dart' as utama;

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
           Navigator.push(context, MaterialPageRoute(builder: (context) => kalender.Kalender()));
         }, 
        ),
      ], 
     ), 
    );
  }
}
