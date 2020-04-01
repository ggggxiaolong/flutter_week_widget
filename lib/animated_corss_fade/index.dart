import 'package:flutter/material.dart';
import 'package:flutter_week_widget/animated_corss_fade/sample1.dart';
import 'sample1.dart';
import 'sample2.dart';
import 'sample3.dart';
import 'sample4.dart';
import 'sample5.dart';

enum _DemoItem{SAMPLE1, SAMPLE2, SAMPLE3, SAMPLE4, SAMPLE5}

extension DemoItemES on _DemoItem{
  static String _title(_DemoItem item){
    switch(item){
      case _DemoItem.SAMPLE1: return"sample1";
      case _DemoItem.SAMPLE2: return"sample2";
      case _DemoItem.SAMPLE3: return"sample3";
      case _DemoItem.SAMPLE4: return"sample4";
      case _DemoItem.SAMPLE5: return"sample5";
    }
  }
  String get title => _title(this);

  static WidgetBuilder _builder(_DemoItem item){
    switch(item){
      case _DemoItem.SAMPLE1: return (context) => SamplePage1();
      case _DemoItem.SAMPLE2: return (context) => SamplePage2();
      case _DemoItem.SAMPLE3: return (context) => SamplePage3();
      case _DemoItem.SAMPLE4: return (context) => SamplePage4();
      case _DemoItem.SAMPLE5: return (context) => SamplePage5();
    }
  }

  WidgetBuilder get builder => _builder(this);
}

class AnimatedCrossFadeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedCrossFadeDemo"),),
      body: ListView(
        children: <Widget>[
          _builder(context, _DemoItem.SAMPLE1),
          _builder(context, _DemoItem.SAMPLE2),
          _builder(context, _DemoItem.SAMPLE3),
          _builder(context, _DemoItem.SAMPLE4),
          _builder(context, _DemoItem.SAMPLE5),
        ],
      ),
    );
  }
}

Widget _builder(BuildContext context, _DemoItem item){
  return Card(
    child: ListTile(
      title: Text(item.title),
      trailing: Icon(Icons.chevron_right),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: item.builder));
      },
    ),
  );
}