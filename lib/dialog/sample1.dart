import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample1 title and content'),),
      body: CupertinoAlertDialog(
        title: Text("Accept?"),
        content: Text('Do you accept?'),
      ),
    );
  }
}