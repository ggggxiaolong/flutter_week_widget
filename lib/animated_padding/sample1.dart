import 'package:flutter/material.dart';

class SamplePage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleState();
}

class _SampleState extends State<SamplePage1> {
  double _padding = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedPadding(
        padding: EdgeInsets.all(_padding),
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        child: Center(
          child: Container(
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _padding = _padding == 0 ? 50 : 0;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}
