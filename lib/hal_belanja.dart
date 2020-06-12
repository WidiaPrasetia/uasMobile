import 'package:flutter/material.dart';
import './main.dart' as HomeUtama;

class Belanja extends StatefulWidget {
  _BelanjaState createState() => _BelanjaState();
}

class _BelanjaState extends State<Belanja> {
  double val;

  void initState() {
    super.initState();
    val = 0;
  }

  void change() {
    setState(() {
      val += 1;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Belanja"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.asset("img/besakih.jpg"),
            title: Text('$val'),
            trailing: Column(
              children: [new Text("Banten")],
            ),
          ),
          MaterialButton(
            color: Colors.green[400],
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => change(),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Container(
          child: Belanja(),
        ),
      ),
    );
  }
}

Future<void> main() async {
  runApp(MyApp());
}
