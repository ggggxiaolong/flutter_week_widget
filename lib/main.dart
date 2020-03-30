import 'package:flutter/material.dart';
import 'package:flutter_week_widget/align/index.dart';
import 'package:flutter_week_widget/dialog/index.dart';

import 'absorb_pointer/index.dart';
import 'nested_navigators/index.dart';

void main() => runApp(MyApp());

enum ViewItem { ABSORB_POINT, NESTED_NAVIGATOR, ALERT_DIALOG, ALIGN }

extension ViewItemExtension on ViewItem {
  static String _value(ViewItem item) {
    switch (item) {
      case ViewItem.ABSORB_POINT:
        return "/absorb_point";
      case ViewItem.NESTED_NAVIGATOR:
        return "/nested_navigator";
      case ViewItem.ALERT_DIALOG:
        return "/alert_dialog";
      case ViewItem.ALIGN:
        return "/align";
    }
    return "";
  }

  String get value => _value(this);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => new HomePage(),
        ViewItem.ABSORB_POINT.value: (BuildContext context) => AbsorbPointApp(),
        ViewItem.NESTED_NAVIGATOR.value: (BuildContext context) =>
            NestedNavigators(),
        ViewItem.ALERT_DIALOG.value: (BuildContext context) => DialogDemo(),
        ViewItem.ALIGN.value: (BuildContext context) => AlignDemo(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: const Text("Flutter week widget"),
        ),
        body: ListView(
          children: <Widget>[
            _buildItem(context, "AbsorbPointer", ViewItem.ABSORB_POINT.value),
            _buildItem(
                context, "NestedNavigator", ViewItem.NESTED_NAVIGATOR.value),
            _buildItem(context, "AlertDialog", ViewItem.ALERT_DIALOG.value),
            _buildItem(context, "Align", ViewItem.ALIGN.value),
          ],
        ));
  }

  Widget _buildItem(BuildContext context, String title, String router) {
    return Card(
        child: ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).pushNamed(router);
      },
      trailing: Icon(Icons.chevron_right),
    ));
  }
}
