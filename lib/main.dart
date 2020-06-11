import 'package:flutter/material.dart';

import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './hal_info.dart' as info;
import './kalender.dart' as kalender;

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
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
              icon: new Icon(Icons.more_vert),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text(
                          "Tentang Aplikasi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        content: new Text(
                            "Yadnya App merupakan aplikasi yang mencangkup lengkap seputar tentang Yadnya. \n Permudah Jalan Yadnya mu",
                            style: TextStyle(
                              fontSize: 15
                            ),),
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
                style: TextStyle(
                    fontFamily: 'Monotype Corsiva',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5
                      ..color = Colors.green[700]),
              ),
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text('Belanja'),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => kalender.Kalender()));
              },
            ),
            ListTile(
              title: Text('Kalender'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => kalender.Kalender()));
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
                text: "Info Yadnya",
              ),
            ],
          )),
    );
  }
}
