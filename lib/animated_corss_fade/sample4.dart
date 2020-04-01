import 'package:flutter/material.dart';

import 'other.dart';

class SamplePage4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SamplePage4State();
}

class _SamplePage4State extends State<SamplePage4> {
  bool _showFirst = true;
  final Widget lightBlueWidget = Container(
    width: 300,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            lightBlueWidget,
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 200),
                crossFadeState: _showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: Hello(),
                secondChild: Goodbye.small(),
                layoutBuilder: (first, firstKey, second, secondKey) {
                  return Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        key: secondKey,
                        child: second,
                      ),
                      Positioned(
                        child: first,
                        key: firstKey,
                      ),
                    ],
                  );
                },
              ),
              onTap: (){
                setState(() {
                  _showFirst = !_showFirst;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            lightBlueWidget,
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
