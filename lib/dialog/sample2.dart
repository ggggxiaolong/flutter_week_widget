import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample2 and content'),),
      body: CupertinoAlertDialog(
        title: Text('Accept?'),
        content: Image.asset('images/dolphin.png'),
      ),
    );
  }
}