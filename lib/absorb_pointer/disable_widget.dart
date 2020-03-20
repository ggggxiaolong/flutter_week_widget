import 'package:flutter/material.dart';

class DisabledWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Many widgets can be disabled'),
      ),
      body: Column(children: <Widget>[
        RaisedButton(
            color: Colors.blue,
            child: const Text('Click me!'),
            onPressed: () {}),
        RaisedButton(
            onPressed: null, color: Colors.blue, child: const Text('Click me'))
      ]),
    );
  }
}
