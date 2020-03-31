import 'package:flutter/material.dart';

class AnimatedColorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedColorPageState();
}

class _AnimatedColorPageState extends State<AnimatedColorPage> {
  Color _color = Color(0xff00bb00);
  final Duration _myDuration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Color"),
        ),
        body: Center(
          child: AnimatedContainer(
            color: _color,
            duration: _myDuration,
            child: Container(
              height: 200,
              width: 200,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.sync),
            onPressed: () {
              setState(() {
                _color = _color == Color(0xff00bb00)
                    ? Color(0xff0000ff)
                    : Color(0xff00bb00);
              });
            }));
  }
}
