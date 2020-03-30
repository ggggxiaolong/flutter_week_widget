import 'package:flutter/material.dart';
import 'package:flutter_week_widget/dialog/sample1.dart';
import 'package:flutter_week_widget/dialog/sample2.dart';
import 'package:flutter_week_widget/dialog/sample3.dart';
import 'package:flutter_week_widget/dialog/sample4.dart';
import 'package:flutter_week_widget/dialog/sample5.dart';
import 'package:flutter_week_widget/dialog/sample6.dart';
import 'package:flutter_week_widget/dialog/sample7.dart';

enum DialogItem {
  SAMPLE1,
  SAMPLE2,
  SAMPLE3,
  SAMPLE4,
  SAMPLE5,
  SAMPLE6,
  SAMPLE7
}

extension DialogItemExtension on DialogItem {
  static String _title(DialogItem item) {
    switch (item) {
      case DialogItem.SAMPLE1:
        return "Sample 1";
      case DialogItem.SAMPLE2:
        return "Sample 2";
      case DialogItem.SAMPLE3:
        return "Sample 3";
      case DialogItem.SAMPLE4:
        return "Sample 4";
      case DialogItem.SAMPLE5:
        return "Sample 5";
      case DialogItem.SAMPLE6:
        return "Sample 6";
      case DialogItem.SAMPLE7:
        return "Sample 7";
    }
  }

  static WidgetBuilder _builder(DialogItem item) {
    switch (item) {
      case DialogItem.SAMPLE1:
        return (context) => SamplePage1();
      case DialogItem.SAMPLE2:
        return (context) => SamplePage2();
      case DialogItem.SAMPLE3:
        return (context) => SamplePage3();
      case DialogItem.SAMPLE4:
        return (context) => SamplePage4();
      case DialogItem.SAMPLE5:
        return (context) => SamplePage5();
      case DialogItem.SAMPLE6:
        return (context) => SamplePage6();
      case DialogItem.SAMPLE7:
        return (context) => SamplePage7();
    }
  }

  String get title => _title(this);

  WidgetBuilder get builder => _builder(this);
}

class DialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dilaogs'),
      ),
      body: ListView(
        children: <Widget>[
          _buildListItem(context, DialogItem.SAMPLE1),
          _buildListItem(context, DialogItem.SAMPLE2),
          _buildListItem(context, DialogItem.SAMPLE3),
          _buildListItem(context, DialogItem.SAMPLE4),
          _buildListItem(context, DialogItem.SAMPLE5),
          _buildListItem(context, DialogItem.SAMPLE6),
          _buildListItem(context, DialogItem.SAMPLE7),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, DialogItem item) {
    return Card(
      child: ListTile(
        title: Text(item.title),
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: item.builder)),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
