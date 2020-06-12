import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './hal_info.dart' as info;
import './hal_belanja.dart' as belanja;
import './test.dart' as hanyaTest;
import './main.dart' as utama;

class Kalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Kalender"),
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
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => belanja.Belanja()));
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Kalender'),
              onTap: () {
                Navigator.pop(context);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => kalender.Kalender()));
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
