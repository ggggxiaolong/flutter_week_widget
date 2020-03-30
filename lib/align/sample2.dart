import 'package:flutter/material.dart';

class SamplePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample2"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("bottomRight"),
              ),
            ),
            Divider(
              height: 8,
              color: Colors.transparent,
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(border: Border.all()),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text("centerRight"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
