import 'package:flutter/material.dart';

class SamplePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample3"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment(-0.75, -0.75),
                child: Text('Hello'),
              ),
            ),
            Divider(
              height: 8,
              color: Colors.transparent,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment(-0.75, -0.75),
                child: Text('Hello'),
              ),
            ),
            Divider(
              height: 8,
              color: Colors.transparent,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment(0, 0),
                child: Text('Hello'),
              ),
            ),
            Divider(
              height: 8,
              color: Colors.transparent,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment(1, 0.5),
                child: Text('Hello'),
              ),
            ),
            Divider(
              height: 8,
              color: Colors.transparent,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment(0.6, -0.8),
                child: Text('Hello'),
              ),
            ),
            Divider(
              height: 8,
              color: Colors.transparent,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment(-0.4, 0.9),
                child: Text('Hello'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
