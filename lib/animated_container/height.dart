import 'package:flutter/material.dart';

class AnimatedHeightPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedHeightPageState();
}

class _AnimatedHeightPageState extends State<AnimatedHeightPage> {
  double _height = 100;
  final Duration _myDuration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Height"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: 200,
          height: _height,
          color: Colors.amber,
          duration: _myDuration,
          child: Container(
            child: Center(
              child: Text(
                "height = ${_height.round()}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            width: 300,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sync),
          onPressed: () {
            setState(() {
              _height = _height == 100.0 ? 150 : 100;
            });
          }),
    );
  }
}
