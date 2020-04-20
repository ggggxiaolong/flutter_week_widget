import 'package:flutter/material.dart';
import 'sample1.dart';
import 'sample2.dart';

enum Sample { SAMPLE1, SAMPLE2 }

extension _SampleEx on Sample {
  String get title {
    switch (this) {
      case Sample.SAMPLE1:
        return "Sample1";
      case Sample.SAMPLE2:
        return "Sample2";
      default:
        return "";
    }
  }

  Widget get builder {
    switch (this) {
      case Sample.SAMPLE1:
        return SamplePage1();
      case Sample.SAMPLE2:
        return SamplePage2();
    }
  }
}

class AnimatedPaddingDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<AnimatedPaddingDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  final _list = [Sample.SAMPLE1, Sample.SAMPLE2];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _list.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPadding"),
        bottom: TabBar(
          controller: _controller,
          tabs: _list
              .map((f) => Tab(text: f.title,))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: _list.map((f) => f.builder).toList(),
      ),
    );
  }
}
