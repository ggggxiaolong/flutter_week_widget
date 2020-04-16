import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class ProviderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("ProviderDemo build");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Provider Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Consumer<Counter>(
                builder: (_, counter, __) {
                  print("Page1 build");
                  return Text("${counter.count}");
                },
              ),
              const Page2(),
            ],
          ),
        ),
//      floatingActionButton: ,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Page2 build");
    return FloatingActionButton(
      onPressed: () {
        Provider.of<Counter>(context, listen: false).increment();
      },
      child: Icon(Icons.add),
    );
  }
}
