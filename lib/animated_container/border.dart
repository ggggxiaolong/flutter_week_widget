import 'package:flutter/material.dart';

class AnimatedBorderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedBorderPageState();
}

class _AnimatedBorderPageState extends State<AnimatedBorderPage> {
  double _border = 1;
  final Duration _myDuration = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Border"),
        ),
        body: Center(
          child: AnimatedContainer(
            decoration: BoxDecoration(
              border: Border.all(width: _border, color: Colors.black),
            ),
            duration: _myDuration,
            width: 200,
            height: 200,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _border = _border == 1.0 ? 5.0 : 1.0;
            });
          },
          child: Icon(Icons.sync),
        ));
  }
}
