import 'package:flutter/material.dart';

import './hal_banten.dart' as banten;
import './hal_pura.dart' as pura;
import './hal_info.dart' as info;

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
          new Tab(icon: Icon(Icons.search)),
        ],
        backgroundColor: Colors.green[200],
        title: new Text("Yadnya App"),
        // actions: <Widget>[
        //   new Tab(icon: Icon(Icons.search))
        // ],
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.fastfood), text: "Jual Beli Banten",
            ),
            new Tab(
              icon: new Icon(Icons.people), text: "Info Pura",
            ),
            new Tab(
              icon: new Icon(Icons.info), text: "Info Yadnya",
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
        color: Colors.green[200],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
             new Tab(
              icon: new Icon(Icons.fastfood), 
            ),
            new Tab(
              icon: new Icon(Icons.people), 
            ),
            new Tab(
              icon: new Icon(Icons.info),
            ),
          ],)
      ),
    );
  }
}
