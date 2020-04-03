import 'package:flutter/material.dart';

class SamplePage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage3> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  final List<String> _list = ['Item1', 'Item2', 'Item3'];
  int count = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample3"),
      ),
      body: AnimatedList(
        initialItemCount: _list.length,
        key: _key,
        itemBuilder: (context, index, animation) => FadeTransition(
          opacity: animation,
          child: _build(_list[index], index),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _insertItem,
      ),
    );
  }

  Widget _build(String item, int index) {
    return Card(
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle),
          color: Colors.red,
          onPressed: () => _removeItem(index),
        ),
      ),
    );
  }

  void _insertItem() {
    _list.add("Item${count++}");
    _key.currentState.insertItem(_list.length - 1);
  }

  void _removeItem(int index) {
    String item = _list.removeAt(index);
    if (item != null) {
      _key.currentState.removeItem(index, (context, animation) {
        return ScaleTransition(
          scale: animation,
          child: _build(item, index),
        );
      });
    }
  }
}
