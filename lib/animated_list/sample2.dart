import 'package:flutter/material.dart';

class SamplePage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage2>{
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  final List<String> _list = <String>["Item1", "Item2", "Item3"];
  int _count = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample2"),),
      body: AnimatedList(
        initialItemCount: _list.length,
        key: _key,
        itemBuilder: (context, index, animation) => _builder(_list[index], index, animation),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _insertItem,
      ),
    );
  }

  Widget _builder(String title, int index, Animation animation){
    return FadeTransition(
      opacity: animation,
      child: Card(
        child: ListTile(
          title: Text(title),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle),
            color: Colors.red,
            onPressed: ()=> _removeItem(index),
          ),
        ),
      ),
    );
  }
  
  void _removeItem(int index){
    final title = _list.removeAt(index);
    if(title != null){
      _key.currentState.removeItem(index, (context, animation) => _builder(title, index, animation));
    }
  }
  
  void _insertItem(){
    _list.add("Item${_count++}");
    _key.currentState.insertItem(_list.length -1);
  }
}