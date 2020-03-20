import 'package:flutter/material.dart';

import 'absorb_pointer/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => new HomePage(),
        "absorb_point": (BuildContext context) => new AbsorbPointApp()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text("Flutter week widget"),),
      body: ListView(children: <Widget>[
        _buildItem(context, "AbsorbPointer", "absorb_point")
      ],)
    );
  }

  Widget _buildItem(BuildContext context,String title, String router){
    return Card(
      child: ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).pushNamed(router);
      },
      trailing: Icon(Icons.chevron_right),
    )
    );
  }

}