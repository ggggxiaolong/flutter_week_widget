import 'package:flutter/material.dart';
import './sample1.dart';
import './sample2.dart';
import './sample3.dart';

enum _DemoItem {SAMPLE1, SAMPLE2, SAMPLE3}

extension _DemoItemEx on _DemoItem {
  static String _title(_DemoItem item){
    switch(item){
      case _DemoItem.SAMPLE1: return "Sample1";
      case _DemoItem.SAMPLE2: return "Sample2";
      case _DemoItem.SAMPLE3: return "Sample3";
    }
  }

  String get title => _title(this);

  static WidgetBuilder _builder(_DemoItem item){
    switch(item){
      case _DemoItem.SAMPLE1: return (context) => SamplePage1();
      case _DemoItem.SAMPLE2: return (context) => SamplePage2();
      case _DemoItem.SAMPLE3: return (context) => SamplePage3();
    }
  }

  WidgetBuilder get builder => _builder(this);
}

class AnimatedOpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedOpacityDemo"),),
      body: ListView(
        children: <Widget>[
          _buildItem(context, _DemoItem.SAMPLE1),
          _buildItem(context, _DemoItem.SAMPLE2),
          _buildItem(context, _DemoItem.SAMPLE3),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, _DemoItem item){
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
}