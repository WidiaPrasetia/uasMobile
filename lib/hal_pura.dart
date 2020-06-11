import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;

class Pura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
       backgroundColor: Colors.green[400],
       title: new Text("Daftar Pura di Bali"), 
      ),
      body: new ListView(
       children: <Widget>[
         new ListPura(gambar: "img/lempuyang.jpg", judul: "Pura Besakih", ),
         new ListPura(gambar: "img/masceti.jpeg", judul: "Pura Masceti", ),
         new ListPura(gambar: "img/besakih.jpg", judul: "Pura Besakih", ),
       ], 
      ),
    );
  }
}

class ListPura extends StatelessWidget {
  ListPura({this.gambar, this.judul});
    final String gambar;
    final String judul;

  @override
  Widget build(BuildContext context) {

    return new Container(
           padding: new EdgeInsets.all(25.0),
          child: new Center(
           child: new Column(
            children: <Widget>[
          new Image.asset(
            gambar,
            width: 200.0,
          ),
          new Text(judul,
          style: new TextStyle(fontSize: 20.0),)
        ],
           ), 
          ), 
    );
  }
}