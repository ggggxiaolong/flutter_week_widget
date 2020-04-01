import 'package:flutter/material.dart';

class SamplePage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SamplePage1State();
}

class _SamplePage1State extends State<SamplePage1>{
  bool _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample1"),),
      body: Center(
        child: AnimatedCrossFade(
          duration: Duration(milliseconds: 200),
          crossFadeState: _showFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: FlutterLogo(style: FlutterLogoStyle.horizontal,size: 100,),
          secondChild: FlutterLogo(style: FlutterLogoStyle.stacked, size: 100,),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sync),
        onPressed: (){
          setState(() {
            _showFirst = !_showFirst;
          });
        },
      ),
    );
  }
}