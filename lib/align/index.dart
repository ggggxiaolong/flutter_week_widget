import 'package:flutter/material.dart';
import 'package:flutter_week_widget/align/sample1.dart';
import 'package:flutter_week_widget/align/sample2.dart';
import 'package:flutter_week_widget/align/sample3.dart';
import 'package:flutter_week_widget/align/sample4.dart';

enum AlignItem {SAMPLE1, SAMPLE2, SAMPLE3, SAMPLE4 }

extension AlignItemExtension on AlignItem {
  static String _title(AlignItem item){
    switch(item){
      case AlignItem.SAMPLE1: return"Sample1";
      case AlignItem.SAMPLE2: return"Sample2";
      case AlignItem.SAMPLE3: return"Sample3";
      case AlignItem.SAMPLE4: return"Sample4";
    }
  }

  static WidgetBuilder _builder(AlignItem item){
    switch(item){
      case AlignItem.SAMPLE1: return (context) => SamplePage1();
      case AlignItem.SAMPLE2: return (context) => SamplePage2();
      case AlignItem.SAMPLE3: return (context) => SamplePage3();
      case AlignItem.SAMPLE4: return (context) => SamplePage4();
    }
  }

  String get title => _title(this);

  WidgetBuilder get builder => _builder(this);
}

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Align demo"),),
      body: ListView(
        children: <Widget>[
          _buildItem(context, AlignItem.SAMPLE1),
          _buildItem(context, AlignItem.SAMPLE2),
          _buildItem(context, AlignItem.SAMPLE3),
          _buildItem(context, AlignItem.SAMPLE4),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, AlignItem item){
    return Card(
      child: ListTile(
        title: Text(item.title),
        trailing: Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: item.builder)),
      ),
    );
  }
}