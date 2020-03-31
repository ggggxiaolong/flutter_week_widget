import 'package:flutter/material.dart';
import 'sine_curve.dart';
import 'border.dart';
import 'border_raddii.dart';
import 'color.dart';
import 'height.dart';

enum DemoItem { BORDER, RADIUS, HEIGHT, COLOR, CURVE }

extension DemoItemExtension on DemoItem {
  static String _title(DemoItem item) {
    switch (item) {
      case DemoItem.BORDER:
        return "border";
      case DemoItem.RADIUS:
        return "radius";
      case DemoItem.HEIGHT:
        return "height";
      case DemoItem.COLOR:
        return "color";
      case DemoItem.CURVE:
        return "curve";
    }
  }

  String get title => _title(this);

  static WidgetBuilder _builder(DemoItem item) {
    switch (item) {
      case DemoItem.BORDER:
        return (context) => AnimatedBorderPage();
      case DemoItem.RADIUS:
        return (context) => AnimatedBorderRadiiPage();
      case DemoItem.HEIGHT:
        return (context) => AnimatedHeightPage();
      case DemoItem.COLOR:
        return (context) => AnimatedColorPage();
      case DemoItem.CURVE:
        return (context) => SineCurveAnimation();
    }
  }

  WidgetBuilder get builder => _builder(this);
}

class AnimatedContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: ListView(
        children: <Widget>[
          _builder(context, DemoItem.BORDER),
          _builder(context, DemoItem.RADIUS),
          _builder(context, DemoItem.HEIGHT),
          _builder(context, DemoItem.COLOR),
          _builder(context, DemoItem.CURVE),
        ],
      ),
    );
  }

  Widget _builder(BuildContext context, DemoItem item) {
    return Card(
      child: ListTile(
          title: Text(item.title),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: item.builder));
          }),
    );
  }
}
