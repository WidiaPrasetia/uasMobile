import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './kalender.dart' as kalender;
import './hal_belanja.dart' as belanja;
import './test.dart' as hanyaTest;
import './main.dart' as utama;

class Pura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Daftar Pura di Bali"),
      ),
      
      
      body: new ListView(
        children: <Widget>[
          new ListPura(
            gambar: "img/lempuyang.jpg",
            judul: "Pura Lempuyang",
            deskripsi: "Pura Lempuyang terletak di Kabupaten Karangasem",
          ),
          new ListPura(
            gambar: "img/masceti.jpeg",
            judul: "Pura Masceti",
            deskripsi: "Pura Masceti terletak di Kabupaten Gianyar",
          ),
          new ListPura(
            gambar: "img/besakih.jpg",
            judul: "Pura Besakih",
            deskripsi: "Pura Besakih terletak di Kabupaten Karangasem",
          ),
        ],
      ),
    );
  }
}

class ListPura extends StatelessWidget {
  ListPura({
    this.gambar,
    this.judul,
    this.deskripsi
  });
  final String gambar;
  final String judul;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(25.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image.asset(
              gambar,
              width: 75.0,
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: new Center(
                  child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    deskripsi,
                    style: new TextStyle(fontSize: 15.0, color: Colors.green),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
