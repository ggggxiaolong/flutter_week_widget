import 'package:flutter/material.dart';
import 'sample1.dart';
import 'sample2.dart';
import 'sample3.dart';

enum DemoItem { SAMPLE1, SAMPLE2, SAMPLE3 }

extension DemoItemEt on DemoItem {
  static String _title(DemoItem item) {
    switch (item) {
      case DemoItem.SAMPLE1:
        return "sample1";
      case DemoItem.SAMPLE2:
        return "sample2";
      case DemoItem.SAMPLE3:
        return "sample3";
    }
  }

  String get title => _title(this);

  static WidgetBuilder _builder(DemoItem item) {
    switch (item) {
      case DemoItem.SAMPLE1:
        return (context) => SamplePage1();
      case DemoItem.SAMPLE2:
        return (context) => SamplePage2();
      case DemoItem.SAMPLE3:
        return (context) => SamplePage3();
    }
  }

  WidgetBuilder get builder => _builder(this);
}

class AnimatedListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedListDemo"),
      ),
      body: ListView(
        children: <Widget>[
          _buildItem(context, DemoItem.SAMPLE1),
          _buildItem(context, DemoItem.SAMPLE2),
          _buildItem(context, DemoItem.SAMPLE3),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, DemoItem item) {
    return Card(
      child: ListTile(
        title: Text(item.title),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: item.builder),
          );
        },
      ),
    );
  }
}
