import 'package:flutter/material.dart';
import 'package:flutter_week_widget/generated/l10n.dart';

class I18NDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<I18NDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I18N"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListTile(
              leading: RaisedButton(
                onPressed: () {
                  setState(() {
                    S.load(Locale("en", "US"));
                  });
                },
                child: Text("ENGLISH"),
              ),
              trailing: RaisedButton(
                onPressed: () {
                  setState(() {
                    S.load(Locale("zh"));
                  });
                },
                child: Text("中文"),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Text(
                    S.of(context).pageHomeListTitle,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    S.of(context).pageHomeSamplePlaceholder("John"),
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    S.of(context).pageHomeSamplePlaceholdersOrdered("小龙", "谈"),
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    S.of(context).pageHomeSamplePlural(1),
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    S.of(context).pageHomeSamplePlural(2),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ))
        ],
      ),
    );
  }
}
