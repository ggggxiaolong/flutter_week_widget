import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 (with AbsorbPointer)'),
      ),
      body: AbsorbPointer(child: ABunchOfWidgets()),
    );
  }
}

class ABunchOfWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Card(
        child: ListTile(
          onTap: () {},
          title: const Text('One-line ListTile'),
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {},
          leading: const FlutterLogo(),
          title: const Text('One-line with leading widget'),
        ),
      ),
      Card(
        child: ListTile(
          title: const Text('One-line with trailing widget'),
          onTap: () {},
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          title: const Text('One-line with both widgets'),
          onTap: () {},
          leading: const FlutterLogo(),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
            onTap: () {},
            title: const Text('One-line dense ListTile'),
            dense: true),
      ),
      Card(
        child: ListTile(
          title: const Text("Two-line ListTile"),
          onTap: () {},
          leading: const FlutterLogo(),
          trailing: Icon(Icons.more_vert),
          subtitle: const Text('Here is a second line'),
        ),
      ),
      Card(
        child: ListTile (
          onTap:(){},
          leading: const FlutterLogo(),
          title: const Text('Three-line ListTile'),
          subtitle: const Text('A sufficiently long subtitle warrants three lines'),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        )
      )
    ]);
  }
}
