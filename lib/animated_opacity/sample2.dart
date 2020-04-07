import 'package:flutter/material.dart';

class SamplePage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedState();
}

class _AnimatedState extends State<SamplePage2> {
  double _opacity = 1;

  void _changeState() {
    setState(() {
      _opacity = _opacity == 1 ? 0 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample2 (Opcity = $_opacity)"),
      ),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(seconds: 1),
        child: Center(
          child: Text(
            "Mischief\nmanaged!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 50,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: _changeState,
      ),
    );
  }
}
