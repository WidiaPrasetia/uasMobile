import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './kalender.dart' as kalender;
import './hal_belanja.dart' as belanja;
import './test.dart' as hanyaTest;
import './main.dart' as utama;


void main(){
  runApp(Banten());
}
class Banten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
      backgroundColor: Colors.green,
      title: new Text("Daftar Banten",), 
     ),
     

     body: new ListView(
      children: <Widget>[
        new ListTile(
         leading: new Icon(Icons.wc),
         title: new Text("Banten Nganten"),
         onTap: (){
           Navigator.canPop(context);
         }, 
        ),
        new ListTile(
         leading: new Icon(Icons.watch_later),
         title: new Text("Banten Sehari-hari"),
         onTap: (){
           Navigator.canPop(context);
         },  
        ),
        new ListTile(
         leading: new Icon(Icons.wb_sunny),
         title: new Text("Banten Purnama dan Tilem"), 
         onTap: (){
           Navigator.canPop(context);
         }, 
        ),
      ], 
     ), 
    );
    // return new Container(
    //   child: new Center(
    //     child: new Column(
    //       children: <Widget>[
    //         new Text("Banten", style: new TextStyle(fontSize: 30.0),),
    //         new Padding(padding: new EdgeInsets.all(20.0),),
    //         new Image.asset("img/banten.jpg", width: 200.0,)
    //       ]
    //     ),
    //   ),
    // );
  }
}