import 'package:flutter/material.dart';
import 'package:flutter_week_widget/nested_navigators/bottom_navigation.dart';

import 'color_detail_page.dart';

class ColorListPage extends StatelessWidget {
  final TabItem item;

  final List<int> _colorIndices = [
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50
  ];

  ColorListPage(this.item);

  void _push(BuildContext context, int index) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ColorDetailPage(item, index)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.value),
        backgroundColor: item.color,
      ),
      body: Container(
        color: Colors.white,
        child: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: _colorIndices.length,
      itemBuilder: (BuildContext context, int index) {
        int mIndex = _colorIndices[index];
        return Container(
          color: item.color[mIndex],
          child: ListTile(
            title: Text(
              '$mIndex',
              style: TextStyle(fontSize: 24.0),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () => _push(context, mIndex),
          ),
        );
      },
    );
  }
}
