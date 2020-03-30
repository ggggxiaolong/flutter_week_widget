import 'package:flutter/material.dart';

class SamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample1 image"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                color: Colors.blue[50],
                child: Align(
                  alignment: Alignment.topRight,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              Divider(
                height: 8,
                color: Colors.transparent,
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.blue[50],
                child: Align(
                  alignment: Alignment(0.2, 0.6),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              Divider(
                height: 8,
                color: Colors.transparent,
              ),
              Container(
                width: 120,
                height: 120,
                color: Colors.blue[50],
                child: Align(
                  alignment: FractionalOffset(0.2, 0.6),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
