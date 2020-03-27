import 'package:flutter/material.dart';
import 'package:flutter_week_widget/nested_navigators/bottom_navigation.dart';
import 'package:flutter_week_widget/nested_navigators/color_list_page.dart';

enum TabDetail { ROOT, DETAIL }

extension TabDetailExtension on TabDetail {
  static String _value(TabDetail val) {
    switch (val) {
      case TabDetail.ROOT:
        return "/root";
      case TabDetail.DETAIL:
        return "/detail";
    }
  }

  String get value => _value(this);
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem item;

  TabNavigator(this.navigatorKey, this.item);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: TabDetail.ROOT.value,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) =>ColorListPage(item),);
      },
    );
  }
}
