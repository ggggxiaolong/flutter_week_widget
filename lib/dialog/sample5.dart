import 'package:flutter/material.dart';

class SamplePage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample5 elevation, color, shape'),
      ),
      body: AlertDialog(
        title: Text('Accept?'),
        content: Text('Do you accept?'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('No'),
              ));
            },
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Yes'),
              ));
            },
          ),
        ],
        elevation: 24,
        backgroundColor: Colors.amber,
        shape: StadiumBorder(),
      ),
    );
  }
}
