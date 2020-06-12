import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './hal_info.dart' as info;
import './kalender.dart' as kalender;
import './hal_belanja.dart' as belanja;
import './test.dart' as hanyaTest;

void main() {
  runApp(new MaterialApp(
    title: "Yadnya Apps",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new IconButton(
              padding: new EdgeInsets.all(23.0),
              icon: new Icon(Icons.more_vert),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          "Tentang Aplikasi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        content: new Text(
                          "Yadnya App merupakan aplikasi yang mencangkup lengkap seputar tentang Yadnya. \n Permudah Jalan Yadnya mu",
                          style: TextStyle(fontSize: 15),
                        ),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("Kembali"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              }),
        ],
        backgroundColor: Colors.green[400],
        title: new Text("Yadnya App"),
        // actions: <Widget>[
        //   new Tab(icon: Icon(Icons.search))
        // ],
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
                Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Belanja'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => belanja.Belanja()));
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
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new banten.Banten(),
          new pura.Pura(),
          new info.Info(),
        ],
      ),
      bottomNavigationBar: new Material(
          color: Colors.green[400],
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.fastfood),
                text: "Jual Beli Banten",
              ),
              new Tab(
                icon: new Icon(Icons.people),
                text: "Info Pura",
              ),
              new Tab(
                icon: new Icon(Icons.info),
                text: "Info",
              ),
            ],
          )),
    );
  }
}
