import 'package:flutter/material.dart';

import 'other.dart';

class SamplePage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SamplePage2State();
}

class _SamplePage2State extends State<SamplePage2> {
  bool _showFirst = true;
  final Widget lightBlueBox = Container(
    width: 300,
    height: 100,
    decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.all(Radius.circular(10))),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample2"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            lightBlueBox,
            GestureDetector(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 200),
                crossFadeState: _showFirst? CrossFadeState.showFirst: CrossFadeState.showSecond,
                firstChild: Hello(),
                secondChild: Goodbye.normal(),
              ),
              onTap: (){
                setState(() {
                  _showFirst = !_showFirst;
                });
              },
            ),
            lightBlueBox,
          ],
        )
      ),
    );
  }
}