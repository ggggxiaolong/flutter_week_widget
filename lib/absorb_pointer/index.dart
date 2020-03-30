import 'package:flutter/material.dart';
import 'sample1.dart';
import 'sample3.dart';
import 'sample2.dart';
import 'disable_widget.dart';

enum Items { DISABLED_WIDGET, SAMPLE1, SAMPLE2, SAMPLE3 }

extension ItemString on Items {
  static String _value(Items val) {
    switch (val) {
      case Items.DISABLED_WIDGET:
        return "absorb_point/diabled_widget";
      case Items.SAMPLE1:
        return "absorb_point/sample1";
      case Items.SAMPLE2:
        return "absorb_point/sample2";
      case Items.SAMPLE3:
        return "absorb_point/sample3";
    }
    throw Exception("Invalid code");
  }

  String get value => _value(this);

  static WidgetBuilder _builder(Items val) {
    switch (val) {
      case Items.DISABLED_WIDGET:
        return (context) => DisabledWidget();
      case Items.SAMPLE1:
        return (context) => SamplePage();
      case Items.SAMPLE2:
        return (context) => Sample2Page();
      case Items.SAMPLE3:
        return (context) => Sample3Page();
    }
    throw Exception("Invalid code");
  }

  WidgetBuilder get builder => _builder(this);
}

class AbsorbPointApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AbsorbPointer'),
        ),
        body: SafeArea(
          child: ListView(children: <Widget>[
            _buildList(
                context, "Many widgets can be disabled", Items.DISABLED_WIDGET),
            _buildList(
                context, "Sample1 (Without AbsorbPointer)", Items.SAMPLE1),
            _buildList(context, "Sample2 (With AbsorbPointer)", Items.SAMPLE2),
            _buildList(context, "Sample3 abdorbing", Items.SAMPLE3),
          ]),
        ));
  }

  Widget _buildList(BuildContext context, String title, Items item) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: item.builder));
        },
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
