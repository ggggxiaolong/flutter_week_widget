import 'package:flutter/material.dart';
import 'package:flutter_week_widget/nested_navigators/bottom_navigation.dart';

class ColorDetailPage extends StatelessWidget {

  final TabItem item;
  final int materialIndex;

  ColorDetailPage(this.item, this.materialIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: item.color, title: Text('${item.value}[$materialIndex]'),),
      body: Container(color: item.color[materialIndex],),
    );
  }
}