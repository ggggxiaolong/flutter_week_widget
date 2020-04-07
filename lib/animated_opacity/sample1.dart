import 'package:flutter/material.dart';

class SamplePage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AnimatedState();
}

class _AnimatedState extends State<SamplePage1> {
  double _opacity = 1;

  void _changeState(){
    setState(() {
      _opacity = _opacity == 1 ? 0 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample1"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 3),
              child: FlutterLogo(),
            ),
            RaisedButton(
              child: Text("Fade Logo"),
              onPressed: _changeState,
            )
          ],
        ),
      ),
    );
  }
}