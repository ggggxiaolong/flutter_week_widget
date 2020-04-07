import 'package:flutter/material.dart';
import 'package:flutter_week_widget/align/index.dart';
import 'package:flutter_week_widget/animate_builder/index.dart';
import 'package:flutter_week_widget/animated_corss_fade/index.dart';
import 'package:flutter_week_widget/animated_icon/index.dart';
import 'package:flutter_week_widget/animated_list/index.dart';
import 'package:flutter_week_widget/animated_opacity/index.dart';
import 'package:flutter_week_widget/dialog/index.dart';

import 'absorb_pointer/index.dart';
import 'animated_container/index.dart';
import 'nested_navigators/index.dart';

void main() => runApp(MyApp());

enum ViewItem {
  ABSORB_POINT,
  NESTED_NAVIGATOR,
  ALERT_DIALOG,
  ALIGN,
  ANIMATE_BUILDER,
  ANIMATED_CONTAINER,
  ANIMATED_CROSS_FADE,
  ANIMATED_ICONS,
  ANIMATED_LIST,
  ANIMATED_OPACITY,
}

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
      case ViewItem.ANIMATE_BUILDER:
        return "/animate_builder";
      case ViewItem.ANIMATED_CONTAINER:
        return "/animate_container";
      case ViewItem.ANIMATED_CROSS_FADE:
        return "/animate_cross_fade";
      case ViewItem.ANIMATED_ICONS:
        return "/animate_icons";
      case ViewItem.ANIMATED_LIST:
        return "/animate_list";
      case ViewItem.ANIMATED_OPACITY:
        return "/animate_opacity";
    }
    return "";
  }

  String get value => _value(this);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => new HomePage(),
        ViewItem.ABSORB_POINT.value: (BuildContext context) => AbsorbPointApp(),
        ViewItem.NESTED_NAVIGATOR.value: (BuildContext context) =>
            NestedNavigators(),
        ViewItem.ALERT_DIALOG.value: (BuildContext context) => DialogDemo(),
        ViewItem.ALIGN.value: (BuildContext context) => AlignDemo(),
        ViewItem.ANIMATE_BUILDER.value: (BuildContext context) =>
            AnimateBuilderDemo(),
        ViewItem.ANIMATED_CONTAINER.value: (BuildContext context) =>
            AnimatedContainerDemo(),
        ViewItem.ANIMATED_CROSS_FADE.value: (BuildContext context) =>
            AnimatedCrossFadeDemo(),
        ViewItem.ANIMATED_ICONS.value: (BuildContext context) =>
            AnimatedIconDemo(),
        ViewItem.ANIMATED_LIST.value: (BuildContext context) =>
            AnimatedListDemo(),
        ViewItem.ANIMATED_OPACITY.value: (BuildContext context) =>
            AnimatedOpacityDemo(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            _buildItem(
                context, "AnimatedBuilder", ViewItem.ANIMATE_BUILDER.value),
            _buildItem(context, "AnimatedContainer",
                ViewItem.ANIMATED_CONTAINER.value),
            _buildItem(context, "AnimatedCrossFade",
                ViewItem.ANIMATED_CROSS_FADE.value),
            _buildItem(context, "AnimatedIcons", ViewItem.ANIMATED_ICONS.value),
            _buildItem(context, "AnimatedList", ViewItem.ANIMATED_LIST.value),
            _buildItem(
                context, "AnimatedOpacity", ViewItem.ANIMATED_OPACITY.value),
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
