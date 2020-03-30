import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample7 cupertino dialog'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('showDliaog'),
          onPressed: () => showCupertinoDialog(
            context: context,
            builder: (_) => CupertinoAlertDialog(
              title: Text("Accept?"),
              content: Text("Do you accept?"),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text('No'),
                  onPressed: () => Navigator.pop(context),
                ),
                CupertinoDialogAction(
                  child: Text('Yes'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
