import 'package:flutter/material.dart';

import 'other.dart';

class SamplePage3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SamplePage3State();
}

class _SamplePage3State extends State<SamplePage3> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            lightBlueBox,
            SizedBox(height: 20,),
            GestureDetector(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 200),
                crossFadeState: _showFirst? CrossFadeState.showFirst: CrossFadeState.showSecond,
                firstChild: Hello(),
                secondChild: Goodbye.small(),
              ),
              onTap: (){
                setState(() {
                  _showFirst = !_showFirst;
                });
              },
            ),
            SizedBox(height: 20,),
            lightBlueBox,
            SizedBox(height: 20,),
          ],
        )
      ),
    );
  }
}
