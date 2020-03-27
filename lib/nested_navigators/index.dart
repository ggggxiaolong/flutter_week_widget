import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_week_widget/nested_navigators/bottom_navigation.dart';
import 'package:flutter_week_widget/nested_navigators/tab_navigator.dart';

class NestedNavigators extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NestedNavigatorStat();
}

class NestedNavigatorStat extends State<NestedNavigators> {
  TabItem _currentTab = TabItem.REA;
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.REA: GlobalKey<NavigatorState>(),
    TabItem.BLUE: GlobalKey<NavigatorState>(),
    TabItem.GREEN: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (_currentTab == tabItem) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }

  Widget _buildOffstageNavigator(TabItem item) {
    return Offstage(
      offstage: _currentTab != item,
      child: TabNavigator(_navigatorKeys[item], item),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator(TabItem.REA),
            _buildOffstageNavigator(TabItem.GREEN),
            _buildOffstageNavigator(TabItem.BLUE),
          ],
        ),
        bottomNavigationBar: BottomNavigation(_currentTab, _selectTab),
      ),
      onWillPop: () async {
        final isFirstRouterInCurrentTab =
            !await _navigatorKeys[_currentTab].currentState.maybePop();
        if (isFirstRouterInCurrentTab) {
          if (_currentTab != TabItem.REA) {
            _selectTab(TabItem.REA);
            return false;
          }
        }
        return isFirstRouterInCurrentTab;
      },
    );
  }
}
