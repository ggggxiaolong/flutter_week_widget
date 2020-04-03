import 'package:flutter/material.dart';

class SamplePage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SamplePage1State();
}

class _SamplePage1State extends State<SamplePage1> {
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();
  final List<String> _list = <String>['Item1', 'Item2', 'Item3'];
  int _count = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample1"),
      ),
      body: AnimatedList(
        key: _key,
        initialItemCount: _list.length,
        itemBuilder: (context, index, animation) => SizeTransition(
          sizeFactor: animation,
          child: _buildItem(index, _list[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _insertItem,
      ),
    );
  }

  Widget _buildItem(int index, String item) {
    return Card(
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
          icon: Icon(
            Icons.remove_circle,
            color: Colors.red,
          ),
          onPressed: () => _removeItem(index),
        ),
      ),
    );
  }

  void _insertItem() {
    _list.add("Item${_count++}");
    print(_list.length);
    _key.currentState.insertItem(_list.length - 1);
  }

  void _removeItem(int index) {
    final String item = _list.removeAt(index);
    if (item != null) {
      _key.currentState.removeItem(
          index,
              (context, animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: _buildItem(index, item),
            );
          }
      );
    }
  }
}
