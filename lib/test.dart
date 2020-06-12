import 'package:flutter/material.dart';
import 'package:uas_app/main.dart';

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
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarSuperHero,),
    );
  }
}