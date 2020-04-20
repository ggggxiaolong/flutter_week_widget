import 'package:flutter/material.dart';

class SamplePage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleState();
}

class _SampleState extends State<SamplePage2> {
  double _paddingX = 0;
  double _paddingY = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedPadding(
        padding: EdgeInsets.symmetric(horizontal: _paddingX, vertical: _paddingY),
        curve: Curves.easeInOut,
        duration: Duration(seconds: 1),
        child: Container(
          color: Colors.lightGreenAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _paddingY = _paddingY == 0 ? 150: 0;
            _paddingX = _paddingX == 0 ? 150: 0;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}