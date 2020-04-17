import 'package:flutter/material.dart';

class SamplePage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedState();
}

class _AnimatedState extends State<SamplePage3>{
  double _opacity = 1;
  List<bool> _isSelected = [true, false];

  void _changeState(){
    setState(() {
      _opacity = _opacity == 1 ? 0: 1;
    });
  }

  Curve _getCurve(){
    if (_isSelected[0]){
      return Curves.linear;
    } else {
      return Curves.elasticInOut;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample3 (Opacity = $_opacity)"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AnimatedOpacity(
            child: Center(
              child: FlutterLogo(size: 300,),
            ),
            curve: _getCurve(),
            opacity: _opacity,
            duration: Duration(seconds: 1),
          ),
          ToggleButtons(
            children: <Widget>[
              Text('linear'),
              Text('elasticOut'),
            ],
            onPressed: (index){
              setState(() {
                _isSelected[index] = true;
                _isSelected[1-index] = false;
              });
            },
            isSelected: _isSelected,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: _changeState,
      ),
    );
  }
}