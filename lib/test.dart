import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './hal_info.dart' as info;
import './kalender.dart' as kalender;
import './hal_belanja.dart' as belanja;
import './test.dart' as hanyaTest;
import './main.dart' as utama;
import 'main.dart';

void main(){
  runApp(new MaterialApp(
    title: "Grid dan Hero",
    home: new Home(),
  ));
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  List<Container>daftarSuperHero = new List();

  var karakter =[
    {"nama":"Pura Lempuyang", "gambar":"lempuyang.jpg"},
    {"nama":"Pura Besakih", "gambar":"besakih.jpg"},
    {"nama":"Pura Masceti", "gambar":"masceti.jpeg"},
    {"nama":"Pura Tanah lot", "gambar":"tanahlot.jpg"}
  ];

  _buatlist()async{
    for (var i = 0; i < karakter.length; i++){
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];
      daftarSuperHero.add(
        new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
            child: new Column(
             children: <Widget>[
               
               new Image.asset("img/$gambar", fit: BoxFit.cover,),
               new Padding(padding: new EdgeInsets.all(10.0,)),
               new Text(karakternya['nama'], style: new TextStyle(fontSize: 20.0),)
             ] 
            )
          ),
        )
      );
    }
  }

  @override
  void initState() {
    _buatlist();// TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[400],
        title: new Text("Informasi Pura", ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Yadnya \n Application',
                textAlign: TextAlign.center,
                style: GoogleFonts.satisfy(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800,
                    fontFeatures: [FontFeature.tabularFigures()],
                    textStyle: TextStyle(color: Colors.green[100])),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.green[600]),
                color: Colors.green[400],
              ),
  
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => utama.Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Belanja'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Kalender'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => kalender.Kalender()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Informasi Pura'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => hanyaTest.Test()));
              },
            ),
            ],
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarSuperHero,),
    );
  }
}