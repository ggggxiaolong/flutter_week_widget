import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Sample3PageState();
  }
}

class _Sample3PageState extends State<Sample3Page> {
  bool _isAbsorbing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 (absorbing : ${_isAbsorbing.toString()})'),
      ),
      body: AbsorbPointer(
        absorbing: _isAbsorbing,
        child: ABunchOfWidgets(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isAbsorbing = !_isAbsorbing;
          });
        },
        child: Icon(Icons.sync),
      ),
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
            title: const Text('One-line with leading widget'),
            leading: const FlutterLogo()),
      ),
      Card(
        child: ListTile(
          onTap: () {},
          title: const Text('One-line with trailing widget'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {},
          title: const Text('One-line both widgets'),
          leading: const FlutterLogo(),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {},
          title: const Text('One-line dens ListTile'),
          dense: true,
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {},
          title: const Text('Two-line ListTile'),
          leading: const FlutterLogo(),
          trailing: Icon(Icons.more_vert),
          subtitle: const Text('Here is a secong line'),
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {},
          title: const Text('Three-line ListTile'),
          leading: const FlutterLogo(),
          subtitle:
              const Text('A sufficiently long subtitle warrants three lines'),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      )
    ]);
  }
}
