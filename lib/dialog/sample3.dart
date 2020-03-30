import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 actions'),
      ),
      body: CupertinoAlertDialog(
        title: Text("Accept?"),
        content: Text('Do you accespt?'),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text("No"),
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("No"),
              ));
            },
          ),
          CupertinoDialogAction(
            child: Text('Yes'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Yes'),
              ));
            },
          )
        ],
      ),
    );
  }
}
