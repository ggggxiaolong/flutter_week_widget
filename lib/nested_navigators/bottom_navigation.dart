import 'package:flutter/material.dart';

enum TabItem { REA, GREEN, BLUE }

extension TabItemExtension on TabItem {
  static String _value(TabItem val) {
    switch (val) {
      case TabItem.REA:
        return "red";
      case TabItem.GREEN:
        return "green";
      case TabItem.BLUE:
        return "blue";
    }
  }

  static Color _color(TabItem val) {
    switch (val) {
      case TabItem.REA:
        return Colors.red;
      case TabItem.GREEN:
        return Colors.green;
      case TabItem.BLUE:
        return Colors.blue;
    }
  }

  String get value => _value(this);

  MaterialColor get color => _color(this);
}

class BottomNavigation extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  BottomNavigation(this.currentTab, this.onSelectTab);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.REA),
        _buildItem(TabItem.GREEN),
        _buildItem(TabItem.BLUE),
      ],
      onTap: (index) => onSelectTab(TabItem.values[index]),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem item) {
    final tabColor = _tabColor(item);
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: tabColor,
      ),
      title: Text(
        item.value,
        style: TextStyle(color: tabColor),
      ),
    );
  }

  Color _tabColor(TabItem item) {
    return currentTab == item ? item.color : Colors.grey;
  }
}
